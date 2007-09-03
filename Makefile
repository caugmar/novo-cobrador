all:

clean:
	rm -rf *.pyc *~ *.sql *.autosave *.csv *.txt

sql:
	tedia2sql -t innodb -o cobranca.sql cobranca.dia

create: sql
	mysql -pcaugm -e "drop database cobranca; create database cobranca; use cobranca; source cobranca.sql;"

