#!/usr/bin/env python2.4
# -*- coding: utf-8 -*-

# Este módulo cuida das importações e funções
# usadas pelos outros módulos.

import csv, os, re, types
from optparse import OptionParser
from time import localtime, strftime
from ConfigParser import SafeConfigParser
from decimal import Decimal
from sqlalchemy.ext.sqlsoup import SqlSoup
import MySQLdb

# Conecta ao banco de dados
db = SqlSoup("mysql://caugm:caugm@localhost/cobranca")
connection = MySQLdb.connect(db='cobranca',user='caugm',passwd='caugm')
cursor = connection.cursor()

# Carrega a configuração
config = SafeConfigParser()
config.read("cobrador.ini")

def valor(valor, esconder_zero=True, largura=11):
    temp = list(("%.2f" % valor).replace('.', ','))
    v = temp.index(",")
    for i in xrange(v-3, 0, -3):
        temp[i:i] = "."
    temp = "".join(temp)
    if temp == "0,00" and esconder_zero:
        temp = ""
    return temp.rjust(largura)

