#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *

def gerar():
    tipos = sorted(list(set([i.tipo for i in db.lancamentos.all()])))
    for tipo in tipos:
        numero = int(config.get(tipo, "número"))
        emissao = config.get("COMUM", "emissão")
        vencimento = config.get("COMUM", "vencimento")
        #temp = db.join(db.lancamentos, db.empresas, db.lancamentos.c.empresa==db.empresas.c.mnemonico)
        temp = db.join(db.lancamentos, db.empresas).filter_by(tipo=tipo)
        empresas = sorted(list(set([(i.nome, i.mnemonico) for i in temp.all()])))
        for nome, mne in empresas:
            empresa = db.empresas.filter_by(mnemonico=mne).one()
            documento = db.documentos_de_cobranca.insert(numero_da_nota=numero,
                                                            nome=empresa.nome,
                                                            logradouro=empresa.logradouro,
                                                            numero=empresa.numero,
                                                            complemento=empresa.complemento,
                                                            bairro=empresa.bairro,
                                                            cidade=empresa.cidade,
                                                            estado=empresa.estado,
                                                            cep=empresa.cep,
                                                            cnpj=empresa.cnpj,
                                                            inscricao_estadual=empresa.inscricao_estadual,
                                                            inscricao_municipal=empresa.inscricao_municipal,
                                                            telefone=empresa.telefone,
                                                            email=empresa.email,
                                                            data_de_emissao=emissao,
                                                            data_de_vencimento=vencimento,
                                                            modelo=tipo)
            db.flush()
            numero += 1
            lancamentos = db.lancamentos.filter_by(tipo=tipo, empresa=mne).order_by('descricao').all()
            for lancamento in lancamentos:
                db.itens_de_cobranca.insert(documento=documento.id,
                                            quantidade=lancamento.quantidade,
                                            descricao=lancamento.descricao,
                                            valor=lancamento.valor)
    db.flush()

