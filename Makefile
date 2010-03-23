all: recibos

recibos:
	empy --execute-file=configuracoes.py recibos-aluguel-escritorio.em > recibos-aluguel-escritorio.html
	empy --execute-file=configuracoes.py recibos-de-aluguel.em > recibos-de-aluguel.html
	empy --execute-file=configuracoes.py recibos-de-aluguel-andrade-alves.em > recibos-de-aluguel-andrade-alves.html
	wkhtmltopdf recibos-aluguel-escritorio.html recibos-aluguel-escritorio.pdf
	wkhtmltopdf recibos-de-aluguel.html recibos-de-aluguel.pdf
	wkhtmltopdf recibos-de-aluguel-andrade-alves.html recibos-de-aluguel-andrade-alves.pdf
	evince *.pdf

clean:
	rm -rf *.pyc *~ *.sql *.autosave *.csv *.txt *.pdf *.html

sql:
	tedia2sql -t innodb -o cobranca.sql cobranca.dia

createdatabase: sql
	mysql -pcaugm -e "drop database cobranca; create database cobranca; use cobranca; source cobranca.sql;"
