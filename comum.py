#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

# Este módulo cuida das importações e funções
# usadas pelos outros módulos.

import csv, os, re
from optparse import OptionParser
from ConfigParser import SafeConfigParser
from decimal import Decimal
from sqlalchemy import create_engine
from sqlalchemy.ext.sqlsoup import SqlSoup

# Conecta ao banco de dados
db = SqlSoup(create_engine("mysql://caugm:caugm@localhost/cobranca"))

# Carrega a configuração
config = SafeConfigParser()
config.read("cobrador.ini")

def valor(valor, largura=11):
    temp = list(("%.2f" % valor).replace('.', ','))
    v = temp.index(",")
    for i in xrange(v-3, 0, -3):
        temp[i:i] = "."
    temp = "".join(temp)
    if temp == "0,00":
        temp = ""
    return temp.rjust(largura)

