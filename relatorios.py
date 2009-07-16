#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from comum import *
from reportlab.lib import colors
from reportlab.lib import pagesizes
from reportlab.lib.styles import getSampleStyleSheet, TA_CENTER
from reportlab.lib.units import cm
from reportlab.platypus import SimpleDocTemplate
from reportlab.platypus import Paragraph, Spacer, Table, TableStyle

class Relatorio:

    def __init__(self, tipo, titulo, dados):
        self.estilos = getSampleStyleSheet().byName
        self.tipo = tipo
        self.arquivo = "relatorio-%s.pdf" % self.tipo.lower()
        self.titulo = titulo.decode('utf-8')
        self.autor = 'cobrador'
        self.pagina = (pagesizes.A4[1], pagesizes.A4[0])
        self.margens = (1*cm, 1*cm, 2*cm, 1.5*cm)
        self.dados = dados
        
    def contagem(self, canvas, doc):
        self.modelo_de_pagina(canvas, doc)
        self.paginas = self.paginas + 1

    def emitir(self):
        self.estilo_comentario = estilo_comentario = self.estilos['Normal']
        estilo_comentario.fontName = 'Helvetica-Oblique'
        estilo_comentario.alignment = TA_CENTER
        lst = []
        tabela = self.gerar()
        if type(tabela) == types.ListType:
            lst = lst + tabela
        else:
            lst.append(tabela)
        lst.append(Spacer(0, 0.5*cm))
        fim = strftime('Emitido em %d/%m/%Y, às %H:%Mh.', localtime())
        lst.append(Paragraph(fim.decode('utf-8'), estilo_comentario))
        self.reiniciar_contagem()
        doc = SimpleDocTemplate(self.arquivo, pagesize=self.pagina,
                                title=self.titulo, author=self.autor,
                                leftMargin=self.margens[0],
                                rightMargin=self.margens[1],
                                topMargin=self.margens[2],
                                bottomMargin=self.margens[3],
                                showBoundary=0)
        doc.build(lst[:], onFirstPage=self.contagem, onLaterPages=self.contagem)
        doc = SimpleDocTemplate(self.arquivo, pagesize=self.pagina,
                                title=self.titulo, author=self.autor,
                                leftMargin=self.margens[0],
                                rightMargin=self.margens[1],
                                topMargin=self.margens[2],
                                bottomMargin=self.margens[3],
                                showBoundary=0)
        try:
            doc.build(lst[:], onFirstPage=self.modelo_de_pagina, onLaterPages=self.modelo_de_pagina)
        except:
            pass

    def modelo_de_pagina(self, canvas, doc):
        canvas.saveState()
        canvas.setFont('Helvetica-Bold', 16)
        canvas.drawCentredString(pagesizes.A4[1]/2.0, 19.5*cm, self.titulo)
        canvas.setFont('Helvetica', 10)
        canvas.drawCentredString(pagesizes.A4[1]/2.0, 1.0*cm, u"Página %d de %d" % (doc.page, self.paginas))
        canvas.restoreState()
    
    def reiniciar_contagem(self):
        self.paginas = 0
    
    def gerar(self):
        dados = [(u'N.º', u'NOME', u'MENS.', u'QT.', u'FISCAIS', u'QT.', u'TRAB.',
                  u'QT.', u'XEROX', u'QT.', u'OUTROS', u'TOTAL')]
        t_mensalidade = Decimal('0.0')
        t_qt_fiscais = 0
        t_fiscais = Decimal('0.0')
        t_qt_trabalhistas = 0
        t_trabalhistas = Decimal('0.0')
        t_qt_xerox = 0
        t_xerox = Decimal('0.0')
        t_qt_outros = 0
        t_outros = Decimal('0.0')
        t_total = Decimal('0.0')
        for linha in self.dados:
            linha['qt_outros'] = 0
            linha['outros'] = Decimal('0.0')
            t_mensalidade += linha['mensalidade']
            t_qt_fiscais += linha['qt_fiscais']
            t_fiscais += linha['fiscais']
            t_qt_trabalhistas += linha['qt_trabalhistas']
            t_trabalhistas += linha['trabalhistas']
            t_qt_xerox += linha['qt_xerox']
            t_xerox += linha['xerox']
            t_qt_outros += linha['qt_outros']
            t_outros += linha['outros']
            t_total += linha['total']
            dados.append([linha['numero'],
                          linha['nome'],
                          valor(linha['mensalidade'], False),
                          '%0d' % linha['qt_fiscais'],
                          valor(linha['fiscais'], False),
                          '%0d' % linha['qt_trabalhistas'],
                          valor(linha['trabalhistas'], False),
                          '%0d' % linha['qt_xerox'],
                          valor(linha['xerox'], False),
                          '%0d' % linha['qt_outros'],
                          valor(linha['outros'], False),
                          valor(linha['total'], False)])
        dados.append(['',
                      u'TOTAIS',
                      valor(t_mensalidade, False),
                      '%0d' % t_qt_fiscais,
                      valor(t_fiscais, False),
                      '%0d' % t_qt_trabalhistas,
                      valor(t_trabalhistas, False),
                      '%0d' % t_qt_xerox,
                      valor(t_xerox, False),
                      '%0d' % t_qt_outros,
                      valor(t_outros, False),
                      valor(t_total, False)])
        formato = TableStyle([('FONT', (0,0), (-1,0), 'Helvetica-Bold'),
                              ('FONT', (0,1), (-1,-1), 'Helvetica'),
                              ('FONT', (0,-1), (-1,-1), 'Helvetica-Bold'),
                              ('VALIGN', (0,0), (-1,0), 'TOP'),
                              ('ALIGN', (0,0), (1,-1), 'LEFT'),
                              ('ALIGN', (2,0), (-1,-1), 'RIGHT'),
                              ('GRID', (0,0), (-1,-1), 0.25, colors.black),
                              ('LINEABOVE', (0,-1), (-1,-1), 2, colors.black),
                              ('LINEBELOW', (0,0), (-1,0), 2, colors.black)])
        return Table(dados,
                     colWidths = [1.5*cm, 9*cm, 2*cm] + [1*cm, 2*cm]*4 + [2*cm],
                     rowHeights = [1*cm] + [0.6*cm] * (len(dados)-1),
                     style = formato, repeatRows = 1, repeatCols = 0, splitByRow = 1,
                     emptyTableAction = None)

def relatorios(emissao, cp850=False):
    tipos = sorted(list(set([i.tipo for i in db.lancamentos.all()])))
    for tipo in tipos:
        dados = []
        dados_mes = {"mês-extenso": config.get("COMUM", "mês-extenso")}
        titulo = config.get(tipo, "título", True) % dados_mes
        documentos = db.documentos_de_cobranca
        documentos = documentos.filter_by(modelo=tipo, data_de_emissao=emissao)
        # documentos = documentos.order_by('numero_da_nota').all()
        documentos = documentos.order_by('nome').all()
        for registro in documentos:
            linha = {'mensalidade': Decimal('0.0'),
                     'qt_trabalhistas': 0,
                     'trabalhistas': Decimal('0.0'),
                     'qt_fiscais': 0,
                     'fiscais': Decimal('0.0'),
                     'qt_xerox': 0,
                     'xerox': Decimal('0.0'),
                     'qt_outros': 0,
                     'outros': Decimal('0.0'),
                     'total': Decimal('0.0')}
            linha['numero'] = registro.numero_da_nota
            linha['nome'] =  registro.nome.decode("latin-1")[:50]
            itens = db.itens_de_cobranca.filter_by(documento=registro.id)
            for i in itens:
                linha['total'] += i.valor
                if i.descricao.startswith("Servi"):
                    linha['mensalidade'] += i.valor
                if i.descricao.startswith("Registro NF Paulista"):
                    linha['mensalidade'] += i.valor
                elif i.descricao.startswith("Guias prev./trab."):
                    linha['qt_trabalhistas'] = i.quantidade
                    linha['trabalhistas'] = i.valor
                elif i.descricao.startswith("Guias fiscais"):
                    linha['qt_fiscais'] = i.quantidade
                    linha['fiscais'] = i.valor
                elif i.descricao.startswith("Xerox"):
                    linha['qt_xerox'] = i.quantidade
                    linha['xerox'] = i.valor
                else:
                    linha['qt_outros'] = i.quantidade
                    linha['outros'] = i.valor
            dados.append(linha)
        relatorio = Relatorio(tipo, titulo, dados)
        relatorio.emitir()

