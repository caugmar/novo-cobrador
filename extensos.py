# !/usr/bin/python
# -*- coding: latin-1 -*-

'''
Este arquivo cont�m fun��es para escrever valores financeiros (em reais) em extenso.

Por Adriano Cavalcanti Mundim e Luiz Eduardo de Oliveira
'''

import string

def extenso(valor):
	
	# N�meros por extenso
	centena = ("", ("cento", "cem"), "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos")
	milhares = ("", "mil", ("milh�o", "milh�es"), ("bilh�o", "bilh�es"), ("trilh�o", "trilh�es"), ("quatrilh�o", "quatrilh�es"))
	
	# Dividindo a string  em dois (tendo o "." como separador)
	# Pega o inteiro (parte[0]) e os centavos (parte[1])
	parte = string.split("%.2f" % valor, ".")
	
	# Verifica se � capaz se fazer
	if len(parte[0])>18:
		return 'O n�mero � muito grande, este programa suporta at� 18 d�gitos na parte inteira!'
	
	# Tratamento dos centavos
	cents = ''
	if parte[1] != '00':
		cents = dezena(int(parte[1])) + ' centavo'
		if parte[1] != '01':
			cents += 's'
	
	# Se n�o houver parte inteira...
	if parte[0] == '':
		if cents != '': # Se h� centavos
			cents = cents[0].swapcase() + cents[1:len(cents)]
			return cents
		else: # Se for tudo zero
			return 'Zero real'
	
	# Classe m�xima do n�mero (milhares, milh�es, bilh�es, etc)
	classemax = (len(parte[0])-1)/3
	
	classe = 0 # Classe inicial da an�lise (a zero � a maior)
	
	saida = '' # String de sa�da do programa
	
	modulo = len(parte[0])%3 # Vari�vel usada para saber em quantos d�gitos tem a primeira classe (classe zero) 
	
	if modulo == 0: # Corre��o para o caso de serem 3 d�gitos
		modulo = 3
	
	while classe <= classemax: # Enquanto houverem "trios"
		dez = '' # Guardar� as dezenas (os dois menos significativos) do "trio"
		saidaterno = '' # Sa�da referente ao terno ("trio") do looping
		if classe > 0: # Se n�o for a primeira classe
			tres = parte[0][((classe-1)*3) + modulo:((classe-1)*3) + modulo + 3] # Pega o terno
			cem = tres[0:1] # A centena
			dez = tres[1:3] # A dezena
			if tres != '000': # Se n�o for nulo, coloca o "e"
				saidaterno += 'e '
		else: # No caso da primeira classe
			if (modulo == 3): # Se houverem os 3 d�gitos
				tres = parte[0][(classe*3):(classe*3) + 3]
				cem = tres[0:1]
				dez = tres[1:3]
			else: # Se n�o
				tres = parte[0][0:modulo]
				cem = '0'
				if len(tres) == 1: # Se for s� 1, coloca zero no primeiro da "dezena"
					dez = '0'
				dez += tres
				tres = cem + dez

		if dez == '00': # Se no trio s� h� centena
			if cem == '1': # Se for cem
				saidaterno += centena[int(cem)][1] # Escreve "cem"
			elif cem != '0': # Se n�o
				saidaterno += centena[int(cem)] # Escreve a centena
		else: # Se h� dezenas e/ou unidades
			if cem == '1':# Se for cem
				saidaterno += centena[int(cem)][0]# Escreve "cento"
			elif cem != '0':# Se n�o
				saidaterno += centena[int(cem)]# Escreve a centena
			if saidaterno != '' and saidaterno != 'e ':# Se n�o for a primeira classe e nem for nula
				saidaterno += ' e '# Coloca o "e"
		
		saidaterno += dezena(int(dez))# Gera a dezena e coloca na vari�vel de sa�da do looping
		
		if saidaterno != '' and saidaterno[len(saidaterno)-1] != ' ':# Se n�o for nula e n�o terminar com espa�o, coloca-o
			saidaterno += ' '
			
		if tres == "001": # Se for "001"
			if classe < classemax-1:# Se n�o for a pen�ltima classe
				saidaterno += milhares[classemax-classe][0] + ' '# Coloca o valor da classe no singular
			elif classe == classemax-1:# Se for
				saidaterno += milhares[classemax-classe] + ' '# Escreve "mil"
		elif tres != '000': # Se n�o for "001", e nem for nula (ent�o � maior que 1!)
			if classe < classemax-1: # Se n�o for a pen�ltima classe
				saidaterno += milhares[classemax-classe][1] + ' '# Coloca o valor da classe no plural
			elif classe == classemax-1:# Se for a pen�ltima classe
				saidaterno += milhares[classemax-classe] + ' '# Escreve "mil"
	
		saida += saidaterno# Concatena a sa�da do looping � sa�da final
		
		classe += 1 # Incrementa a classe
	
	if saida=='um ': # Se a parte inteira for "1"
		saida += 'real'# Escreve "real" no fim da sa�da
	elif saida=='': # Se for espa�o, zera a sa�da
		saida=''
	else: # Se for qualquer outra
		saida += 'reais' # Escreve "reais" no final
	
	if saida!='' and cents!='': # Se a sa�da (da parte inteira) n�o for nula e houverem centavos
		saida += ' e ' # Coloca o "e"
	saida += cents # Concatena os centavos � sa�da
		
	saida = saida[0].swapcase() + saida[1:len(saida)] # Torna mai�sculo o primeiro caractere da sa�da
	
	return saida

def dezena(numero): # Recebe n�mero formado por dois d�gitos
	
	numeros = ("", "um", "dois", "tr�s", "quatro", "cinco", "seis", "sete", "oito", "nove")
	# Caso mude "um" para "hum", � necess�rio tamb�m mudar na linha 127 (if saida=='um ')!
	dezenas = ("", "dez", "vinte", "trinta", "quarenta", "cinq�enta", "sessenta", "setenta", "oitenta", "noventa")
	excessoes = ("dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis", "dezessete", "dezoito", "dezenove")
	
	if numero < 20: # Se � menor que 20
		if numero >= 10: # Se � maior ou igula � 10
			return excessoes[numero%10]
		else: # Se � menor que 10
			return numeros[numero]
	else: # Se � maior ou igual � vinte
		saida = dezenas[numero/10] # Escreve a dezena
		if numero%10 > 0: # Se n�o � redondo
			saida += ' e ' + numeros[numero%10] # Concatena o "e" e a unidade
	return saida

