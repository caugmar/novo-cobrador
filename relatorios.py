#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *

def relatorios(emissao, cp850=False):
    tipos = sorted(list(set([i.tipo for i in db.lancamentos.all()])))
    for tipo in tipos:
        pagina = 1
        linhas = 61
        geral = Decimal("0.0")
        titulo = config.get(tipo, "título")
        print "%s\n" % titulo
        print "+--------+-------------------------------------------------------+-------------+"
        print "| NFFS   | Empresa                                               |     Valores |"
        print "+--------+-------------------------------------------------------+-------------+"
        dados = db.documentos_de_cobranca
        dados = dados.filter_by(modelo=tipo, data_de_emissao=emissao)
        dados = dados.order_by('numero_da_nota').all()
        for registro in dados:
            print "| %06d | %-67s |" % (registro.numero_da_nota, registro.nome[:67])
            print "|        +------+------------------------------------------------+-------------+"
            linhas -= 2
            itens = db.itens_de_cobranca.filter_by(documento=registro.id)
            itens = itens.order_by('descricao').all()
            total = Decimal("0.0")
            for i in itens:
                linha = "|        | %-4d | %-46s | %s |"
                print linha % (i.quantidade, i.descricao[:46], valor(i.valor))
                linhas -= 1
                total += i.valor
            print "|        +------+------------------------------------------------+-------------+"
            print "|        |                                           T O T A L   | %s |" % valor(total)
            print "+--------+-------------------------------------------------------+-------------+"
            linhas -= 3
            geral += total
            if linhas <= 12:
                print "\n" * (linhas - 3)
                print ("Página %d" % pagina).center(80)
                print "\n%s\n" % titulo
                print "+--------+-------------------------------------------------------+-------------+"
                print "| NFFS   | Empresa                                               |     Valores |"
                print "+--------+-------------------------------------------------------+-------------+"
                pagina += 1
                linhas = 61
        print ""
        print "+----------------------------------------------------------------+-------------+"
        print "|                                        T O T A L   G E R A L   | %s |" % valor(geral)
        print "+----------------------------------------------------------------+-------------+"
        print chr(12) # Form feed
