# !/usr/bin/python
# -*- coding: utf-8 -*-

'''
Este arquivo contém funções para escrever valores financeiros (em reais) em extenso.

Por Adriano Cavalcanti Mundim e Luiz Eduardo de Oliveira
'''

import string

def extenso(valor):
	
	# Números por extenso
	centena = ("", ("cento", "cem"), "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos")
	milhares = ("", "mil", ("milhão", "milhões"), ("bilhão", "bilhões"), ("trilhão", "trilhões"), ("quatrilhão", "quatrilhões"))
	
	# Dividindo a string  em dois (tendo o "." como separador)
	# Pega o inteiro (parte[0]) e os centavos (parte[1])
	parte = string.split("%.2f" % valor, ".")
	
	# Verifica se é capaz se fazer
	if len(parte[0])>18:
		return 'O número é muito grande, este programa suporta até 18 dígitos na parte inteira!'
	
	# Tratamento dos centavos
	cents = ''
	if parte[1] != '00':
		cents = dezena(int(parte[1])) + ' centavo'
		if parte[1] != '01':
			cents += 's'
	
	# Se não houver parte inteira...
	if parte[0] == '':
		if cents != '': # Se há centavos
			cents = cents[0].swapcase() + cents[1:len(cents)]
			return cents
		else: # Se for tudo zero
			return 'Zero real'
	
	# Classe máxima do número (milhares, milhões, bilhões, etc)
	classemax = (len(parte[0])-1)/3
	
	classe = 0 # Classe inicial da análise (a zero é a maior)
	
	saida = '' # String de saída do programa
	
	modulo = len(parte[0])%3 # Variável usada para saber em quantos dígitos tem a primeira classe (classe zero) 
	
	if modulo == 0: # Correção para o caso de serem 3 dígitos
		modulo = 3
	
	while classe <= classemax: # Enquanto houverem "trios"
		dez = '' # Guardará as dezenas (os dois menos significativos) do "trio"
		saidaterno = '' # Saída referente ao terno ("trio") do looping
		if classe > 0: # Se não for a primeira classe
			tres = parte[0][((classe-1)*3) + modulo:((classe-1)*3) + modulo + 3] # Pega o terno
			cem = tres[0:1] # A centena
			dez = tres[1:3] # A dezena
			if tres != '000': # Se não for nulo, coloca o "e"
				saidaterno += 'e '
		else: # No caso da primeira classe
			if (modulo == 3): # Se houverem os 3 dígitos
				tres = parte[0][(classe*3):(classe*3) + 3]
				cem = tres[0:1]
				dez = tres[1:3]
			else: # Se não
				tres = parte[0][0:modulo]
				cem = '0'
				if len(tres) == 1: # Se for só 1, coloca zero no primeiro da "dezena"
					dez = '0'
				dez += tres
				tres = cem + dez

		if dez == '00': # Se no trio só há centena
			if cem == '1': # Se for cem
				saidaterno += centena[int(cem)][1] # Escreve "cem"
			elif cem != '0': # Se não
				saidaterno += centena[int(cem)] # Escreve a centena
		else: # Se há dezenas e/ou unidades
			if cem == '1':# Se for cem
				saidaterno += centena[int(cem)][0]# Escreve "cento"
			elif cem != '0':# Se não
				saidaterno += centena[int(cem)]# Escreve a centena
			if saidaterno != '' and saidaterno != 'e ':# Se não for a primeira classe e nem for nula
				saidaterno += ' e '# Coloca o "e"
		
		saidaterno += dezena(int(dez))# Gera a dezena e coloca na variável de saída do looping
		
		if saidaterno != '' and saidaterno[len(saidaterno)-1] != ' ':# Se não for nula e não terminar com espaço, coloca-o
			saidaterno += ' '
			
		if tres == "001": # Se for "001"
			if classe < classemax-1:# Se não for a penúltima classe
				saidaterno += milhares[classemax-classe][0] + ' '# Coloca o valor da classe no singular
			elif classe == classemax-1:# Se for
				saidaterno += milhares[classemax-classe] + ' '# Escreve "mil"
		elif tres != '000': # Se não for "001", e nem for nula (então é maior que 1!)
			if classe < classemax-1: # Se não for a penúltima classe
				saidaterno += milhares[classemax-classe][1] + ' '# Coloca o valor da classe no plural
			elif classe == classemax-1:# Se for a penúltima classe
				saidaterno += milhares[classemax-classe] + ' '# Escreve "mil"
	
		saida += saidaterno# Concatena a saída do looping à saída final
		
		classe += 1 # Incrementa a classe
	
	if saida=='um ': # Se a parte inteira for "1"
		saida += 'real'# Escreve "real" no fim da saída
	elif saida=='': # Se for espaço, zera a saída
		saida=''
	else: # Se for qualquer outra
		saida += 'reais' # Escreve "reais" no final
	
	if saida!='' and cents!='': # Se a saída (da parte inteira) não for nula e houverem centavos
		saida += ' e ' # Coloca o "e"
	saida += cents # Concatena os centavos à saída
		
	saida = saida[0].swapcase() + saida[1:len(saida)] # Torna maiúsculo o primeiro caractere da saída
	
	return saida

def dezena(numero): # Recebe número formado por dois dígitos
	
	numeros = ("", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove")
	# Caso mude "um" para "hum", é necessário também mudar na linha 127 (if saida=='um ')!
	dezenas = ("", "dez", "vinte", "trinta", "quarenta", "cinqüenta", "sessenta", "setenta", "oitenta", "noventa")
	excessoes = ("dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis", "dezessete", "dezoito", "dezenove")
	
	if numero < 20: # Se é menor que 20
		if numero >= 10: # Se é maior ou igula à 10
			return excessoes[numero%10]
		else: # Se é menor que 10
			return numeros[numero]
	else: # Se é maior ou igual à vinte
		saida = dezenas[numero/10] # Escreve a dezena
		if numero%10 > 0: # Se não é redondo
			saida += ' e ' + numeros[numero%10] # Concatena o "e" e a unidade
	return saida

