all:

clean:
	rm -rf *.pyc *~ *.sql *.autosave *.csv *.txt
	mysql -pcaugm cobranca -e "delete from lancamentos;"
	mysql -pcaugm cobranca -e "delete from empresas;"
	mysql -pcaugm cobranca -e "delete from tipos_de_documento;"

sql:
	tedia2sql -t innodb -o cobranca.sql cobranca.dia

create: sql
	mysql -pcaugm -e "drop database cobranca; create database cobranca; use cobranca; source cobranca.sql;"

