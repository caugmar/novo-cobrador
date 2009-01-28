#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *

def carregar_tipos():
    tipos = sorted([i for i in os.listdir(".") if i.endswith(".tmpl")])
    for arquivo in tipos:
        tipo = arquivo.replace(".tmpl", "").upper()
        if os.access(arquivo, os.F_OK):
            texto = open(arquivo).read()
            if not db.tipos_de_documento.select_by(mnemonico=tipo):
                db.tipos_de_documento.insert(mnemonico=tipo, modelo=texto)
            else:
                temp = db.tipos_de_documento.get_by(mnemonico=tipo.encode("latin-1"))
                temp.modelo = texto
    db.flush()

def carregar_empresas():
    if os.access('empresas.csv', os.F_OK):
        dados = list(csv.reader(open('empresas.csv')))[1:]
        db.empresas.delete()
        for registro in dados:
            db.empresas.insert(mnemonico = registro[0],
                                nome = registro[1],
                                logradouro = registro[2],
                                numero = registro[3],
                                complemento = registro[4],
                                bairro = registro[5],
                                cidade = registro[6],
                                estado = registro[7],
                                cep = registro[8],
                                cnpj = registro[9],
                                inscricao_estadual = registro[10],
                                inscricao_municipal = registro[11],
                                telefone = registro[12],
                                email = registro[13],
                                planilha = registro[14])
    db.flush()

def carregar_lancamentos():
    if os.access('lancamentos.csv', os.F_OK):
        dados = list(csv.reader(open('lancamentos.csv')))[1:]
        db.lancamentos.delete()
        carregar_empresas()
        for registro in dados:
            db.lancamentos.insert(tipo = registro[0],
                                    empresa = registro[1],
                                    quantidade = registro[2],
                                    descricao = registro[3],
                                    valor = registro[4].replace(',', '.'))
    db.flush()

def carregar():
    carregar_tipos()
    carregar_lancamentos()

