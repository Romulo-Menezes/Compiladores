%option noyywrap

H1      #" "
H2      ##" "
H3      ###" "
H4      ####" "
H5      #####" "
H6      ######" "

Alfabeto    [a-zA-Z]
Digito      [0-9]
Pontuacao   [.,!?;]
Texto   ({Alfabeto}|{Pontuacao}|" "|{Digito})+

Lista -" "

%%

"\n"         { }
{H1}         { return TK_H1; }
{H2}         { return TK_H2; }
{H3}         { return TK_H3; }
{H4}         { return TK_H4; }
{H5}         { return TK_H5; }
{H6}         { return TK_H6; }

{Lista}      { return TK_LISTA; }

{Texto}      { yylval.label = yytext; return TK_TEXTO; }

.            ;

%%
