#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from xml.dom.minidom import parse, parseString
import os, re, sys
from comum import *

class Content:

    def __init__(self, filename):
        self.filename = filename
        self.dom = parse(self.filename)
        self.body = self.dom.firstChild.getElementsByTagName("office:body")[0]
        self.sheet = self.body.getElementsByTagName("office:spreadsheet")[0]
        self.table = self.sheet.getElementsByTagName("table:table")[0]
        self.rows = self.table.childNodes
        self.index = 0
        for i in range(len(self.rows)):
            self.index = i
            if "<text:p>TOTAL</text:p>" in self.rows[i].toxml():
                break
        self.sumRow = self.rows[self.index].childNodes
        self.cellIndex = 0
        for i in range(len(self.sumRow)):
            self.cellIndex = i
            if ":=SUM" in self.sumRow[i].toxml():
                break
        self.cell = self.sumRow[self.cellIndex]
        self.formula = self.cell.getAttribute("table:formula")
        self.newRowNumber = int(re.search("\[.H.*:.H(.*)]", self.formula).group(1)) + 1
        self.formula = re.sub("\[.H.*:.H.*]", "[.H2:.H%s]" % self.newRowNumber, self.formula)
        self.cell.setAttribute("table:formula", self.formula)

    def getStyles(self):
        sample = self.rows[self.index - 1].childNodes
        styles = []
        for cell in sample:
            styles.append(cell.getAttribute("table:style-name"))
        return [style for style in styles if style.strip() != ""]

    def insertNewRow(self, data, descricao, valor, linha):
        iso = data.split("/")
        iso.reverse()
        iso = "-".join(iso)
        formatado = ("%.2f" % valor).replace(".", ",")
        dados = {"data-iso": iso,
                 "data": data,
                 "descricao": descricao,
                 "valor": valor,
                 "valor-formatado": formatado,
                 "linha": linha}
        xml = """<container xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"><table:table-row table:style-name="ro2"><table:table-cell office:date-value="%(data-iso)s" office:value-type="date" table:style-name="ce2"><text:p>%(data)s</text:p></table:table-cell><table:table-cell office:value-type="string" table:style-name="ce7"><text:p>%(descricao)s</text:p></table:table-cell><table:table-cell office:value="%(valor)s" office:value-type="float" table:style-name="ce10"><text:p>%(valor-formatado)s</text:p></table:table-cell><table:table-cell table:style-name="ce13"/><table:table-cell office:value-type="string" table:style-name="ce15"><text:p>não</text:p></table:table-cell><table:table-cell office:value="0" office:value-type="float" table:style-name="ce10"><text:p>-</text:p></table:table-cell><table:table-cell table:style-name="ce2"/><table:table-cell office:value="%(valor)s" office:value-type="float" table:formula="oooc:=[.C%(linha)s]-[.F%(linha)s]" table:style-name="ce10"><text:p>%(valor-formatado)s</text:p></table:table-cell><table:table-cell office:value-type="string" table:style-name="ce15"><text:p></text:p></table:table-cell><table:table-cell table:number-columns-repeated="247"/></table:table-row></container>"""
        xml = xml % dados
        #newRow = parseString(xml.decode("latin-1").encode("utf-8")).firstChild.getElementsByTagName("table:table-row")[0]
        newRow = parseString(xml).firstChild.getElementsByTagName("table:table-row")[0]
        for cell, style in zip(newRow.childNodes, self.getStyles()):
            cell.setAttribute("table:style-name", style)
        self.rows[self.index:self.index] = [newRow]

    def write(self):
        xmlFile = open(self.filename, "w")
        xmlFile.write(self.dom.toxml().encode("utf-8"))
        xmlFile.close()

def atualizar_planilha(caminho, data, descricao, valor):
    tempdir = os.path.abspath("tempdir")
    caminho = os.path.abspath(caminho)
    caminho = caminho.decode('latin-1').encode('utf-8')
    print caminho
    os.system("rm -rf %s > /dev/null 2>&1" % tempdir)
    os.mkdir(tempdir)
    os.chdir(tempdir)
    os.system('unzip -q "%s"' % caminho)
    content = Content("content.xml")
    content.insertNewRow(data=data, descricao=descricao, valor=valor, linha=content.newRowNumber)
    content.write()
    os.remove(caminho)
    os.system('zip -qr9 "%s" *' % caminho)
    os.chdir("..")
    os.system("rm -rf %s > /dev/null 2>&1" % tempdir)

def atualizar(emissao):
    for doc in db.documentos_de_cobranca.filter_by(data_de_emissao=emissao):
        planilha = db.empresas.select_by(nome=doc.nome)[0].planilha
        if planilha.strip() == "":
            continue
        diretorio = config.get("COMUM", "planilhas")
        caminho = os.path.join(diretorio, planilha[0].lower(), planilha)
        dados = {"número": doc.numero_da_nota, "mês": config.get("COMUM", "mês")}
        descricao = config.get(doc.modelo, "descrição", True) % dados
        valores = [i.valor for i in db.itens_de_cobranca.filter_by(documento=doc.id).select()]
        valor = float(reduce(lambda a, b: a+b, valores))
        atualizar_planilha(caminho, emissao, descricao, valor)

if __name__ == "__main__":
    atualizar_planilha(sys.argv[1], data="12/01/2008", descricao="Cobrança 01/2008", valor=4.32)

