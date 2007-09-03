#!/usr/bin/env python2.4
# -*- coding: latin-1 -*-

from comum import *
from carregar import carregar
from gerar import gerar
from emitir import emitir
from relatorios import relatorios

if __name__ == '__main__':
    global cp850
    parser = OptionParser("%prog [-c] [-g] [-e] [-d] [-r]")
    parser.add_option("-c", "--carregar", action="store_true", dest="carregar",
                      help="carrega as planilhas no banco de dados")
    parser.add_option("-g", "--gerar", action="store_true", dest="gerar",
                      help="gera os documentos de cobrança")
    parser.add_option("-e", "--emitir", dest="emitir", metavar="EMISSAO",
                      help="emite os documentos de cobrança referentes à data de EMISSAO")
    parser.add_option("-d", "--cp-850", action="store_true", dest="cp850",
                      help="codifica para impressão em CP-850 (DOS)")
    parser.add_option("-r", "--relatorios", dest="relatorios", metavar="EMISSAO",
                      help="gera os relatórios de cobrança referentes à data de EMISSAO")
    (options, args) = parser.parse_args()
    if options.carregar: 
        carregar()
    if options.gerar: 
        gerar()
    if options.emitir: 
        emitir(options.emitir, options.cp850)
    if options.relatorios: 
        relatorios(options.relatorios, options.cp850)

