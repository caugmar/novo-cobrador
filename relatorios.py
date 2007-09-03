#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *

def relatorios(emissao, cp850=False):
    tipos = sorted(list(set([i.tipo for i in db.lancamentos.all()])))
    for tipo in tipos:
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
            itens = db.itens_de_cobranca.filter_by(documento=registro.id)
            itens = itens.order_by('descricao').all()
            total = Decimal("0.0")
            for i in itens:
                linha = "|        | %-4d | %-46s | %s |"
                print linha % (i.quantidade, i.descricao[:46], valor(i.valor))
                total += i.valor
            print "|        +------+------------------------------------------------+-------------+"
            print "|        |                                           T O T A L   | %s |" % valor(total)
            print "+--------+-------------------------------------------------------+-------------+"
            geral += total
        print ""
        print "+----------------------------------------------------------------+-------------+"
        print "|                                        T O T A L   G E R A L   | %s |" % valor(geral)
        print "+----------------------------------------------------------------+-------------+"
        print chr(12) # Form feed
