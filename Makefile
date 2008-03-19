all: recibos

recibos:
	empy --execute-file=configuracoes.py recibos-aluguel-escritorio.em > recibos-aluguel-escritorio.html
	empy --execute-file=configuracoes.py recibos-de-aluguel.em > recibos-de-aluguel.html
	firefox -P printing *.html 

clean:
	rm -rf *.pyc *~ *.sql *.autosave *.csv *.txt *.pdf *.html

sql:
	tedia2sql -t innodb -o cobranca.sql cobranca.dia

createdatabase: sql
	mysql -pcaugm -e "drop database cobranca; create database cobranca; use cobranca; source cobranca.sql;"

