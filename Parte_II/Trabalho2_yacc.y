%{
#include <stdio.h>
#include <string>
#include <iostream>
#include <sstream>

#define YYSTYPE atributos
using namespace std;

void yyerror(string);
int yylex(void);
int yyparse();

stringstream ss;

struct atributos
	{
    string label;
	};

%}

%token TK_H1 TK_H2 TK_H3 TK_H4 TK_H5 TK_H6 TK_LISTA TK_TEXTO

%%

OP:         TITULO  
                |
            PARAGRAFO
                |
            LISTA
            |
            ;

TITULO:    TK_H1 TK_TEXTO OP { ss << "<h1> " << $2.label << " </h1>" << endl; }
                |
           TK_H2 TK_TEXTO OP  { ss << "<h2> " << $2.label << " </h2>" << endl; }
                |
           TK_H3 TK_TEXTO OP  { ss << "<h3> " << $2.label << " </h3>" << endl; }
                |
           TK_H4 TK_TEXTO OP  { ss << "<h4> " << $2.label << " </h4>" << endl; }
                |
           TK_H5 TK_TEXTO OP  { ss << "<h5> " << $2.label << " </h5>" << endl; }
                |
           TK_H6 TK_TEXTO OP  { ss << "<h6> " << $2.label << " </h6>" << endl; }
                ;

PARAGRAFO:      TK_TEXTO OP { ss << "<p> " << $1.label << " </p>" << endl; }
                ;

LISTA:      TK_LISTA TK_TEXTO OP { ss << "<li> " << $2.label << " </li>" << endl; }
            ;

%%
#include "lex.yy.c"

int yyparse();

void yyerror (string MSG){
    cout << MSG << endl;
    exit(0);
}

int main(){

    extern FILE *yyin;
    yyin = fopen("texto.md", "r");

    yyparse();

    cout << ss.str();

    return 0;
}