#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *

def eliminar(data_de_emissao):
    docs = db.documentos_de_cobranca.select_by(data_de_emissao=data_de_emissao)
    for doc in docs:
        itens = db.itens_de_cobranca.select_by(documento=doc.id)
        for item in itens:
            db.delete(item)
            db.flush()
        db.delete(doc)
    db.flush()
