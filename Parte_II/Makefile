all:
	clear
	lex Trabalho2_lex.l
	yacc -d Trabalho2_yacc.y
	g++ -o out y.tab.c -ll
	./out