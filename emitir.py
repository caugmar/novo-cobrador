#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *
from extensos import extenso


### Funções utilitárias

def procusto(lista_de_itens):
    lista =  [[i.quantidade, i.descricao, i.valor] for i in lista_de_itens]
    if len(lista) > 4:
        return lista[:4]
    if len(lista) < 4:
        falta = 4 - len(lista)
        for i in range(falta):
            lista.append([0L, '', Decimal("0.00")])
        return lista
    return lista 

def ate(texto, indice):
    if indice >= len(texto):
        return texto
    i = texto.rfind(' ', 0, indice+1)
    if i == -1:
        return texto[:indice]
    else:
        return texto[:i]

def desde(texto, indice):
    if indice >= len(texto):
        return ''
    if texto[indice] == ' ':
        return texto[indice+1:]
    else:
        i = texto.rfind(" ", 0, indice+1)
        if i == -1:
            return texto[indice:]
        else:
            return texto[i+1:]


### Classe que representa um modelo para impressão

class Modelo:
    def __init__(self, texto):
        self.texto = texto

    def __repr__(self):
        return self.texto

    def subst(self, campo, valor, largura=0):
        campo = r"\[%s *\]" % campo
        valor = "%s" % valor
        if valor == "0":
            valor = ""
        if largura != 0:
            valor = valor.ljust(largura)
        self.texto = re.sub(campo, valor, self.texto)

    def cp850(self):
        self.texto = self.texto.decode("latin-1").encode("cp850")


### Função para emissão dos documentos de cobrança

def emitir(emissao, cp850=False):
    tipos = sorted(list(set([i.tipo for i in db.lancamentos.all()])))
    for tipo in tipos:
        t = db.documentos_de_cobranca
        dados = t.filter_by(modelo=tipo, data_de_emissao=emissao).order_by('numero_da_nota').all()
        for registro in dados:
            modelo = Modelo(db.tipos_de_documento.filter_by(mnemonico=tipo).one().modelo)
            modelo.subst("nome", registro.nome[:52], 52)
            modelo.subst("nffs", "%06d" % registro.numero_da_nota, 6)

            # Endereço para avisos de cobrança
            endereco = "%s, %s" % (registro.logradouro, registro.numero)
            if registro.complemento.strip() != "-":
                endereco += " - %s" % registro.complemento
            modelo.subst("endereco1", ate(endereco, 48), 48)
            modelo.subst("endereco2", desde(endereco, 48), 48)
            modelo.subst("bairro", registro.bairro, 18)
            modelo.subst("cidade", registro.cidade, 10)
            modelo.subst("u", registro.estado, 3)
            modelo.subst("cep", registro.cep, 9)

            # Endereço para outras notas
            endereco = "%s, %s" % (registro.logradouro, registro.numero)
            if registro.complemento.strip() != "-":
                endereco += " - %s" % registro.complemento
            endereco += " - %s - %s" % (registro.bairro, registro.cidade)
            endereco += " - %s - CEP %s" % (registro.estado, registro.cep)
            modelo.subst("endereco3", ate(endereco, 48), 48)
            modelo.subst("endereco4", desde(endereco, 48), 58)

            modelo.subst("cnpj", registro.cnpj, 18)
            modelo.subst("ie", registro.inscricao_estadual, 15)
            modelo.subst("im", registro.inscricao_municipal, 5)

            itens = procusto(db.itens_de_cobranca.filter_by(documento=registro.id).all())
            modelo.subst("q1", itens[0][0], 4)
            modelo.subst("d1", itens[0][1][:36], 36)
            modelo.subst("v1", valor(itens[0][2]))
            modelo.subst("q2", itens[1][0], 4)
            modelo.subst("d2", itens[1][1][:36], 36)
            modelo.subst("v2", valor(itens[1][2]))
            modelo.subst("q3", itens[2][0], 4)
            modelo.subst("d3", itens[2][1][:36], 36)
            modelo.subst("v3", valor(itens[2][2]))
            modelo.subst("q4", itens[3][0], 4)
            modelo.subst("d4", itens[3][1][:36], 36)
            modelo.subst("v4", valor(itens[3][2]))
            total = 0
            for item in itens:
                total += item[2]

            modelo.subst("total", valor(total))
            modelo.subst("extenso", extenso(total)[:69], 69)
            modelo.subst("emissao", registro.data_de_emissao)
            modelo.subst("vcto", registro.data_de_vencimento)
            if cp850:
                modelo.cp850()
            print modelo

