%option noyywrap

TK_A        d
TK_B        e
TK_C        f
TK_D        g
TK_E        h
TK_F        i
TK_G        j
TK_H        k
TK_I        l
TK_J        m
TK_K        n
TK_L        o
TK_M        p
TK_N        q
TK_O        r
TK_P        s
TK_Q        t
TK_R        u
TK_S        v
TK_T        w
TK_U        x
TK_V        y
TK_W        z
TK_X        a
TK_Y        b
TK_Z        c

%%

[" "]       {printf(" ");}
{TK_A}      {printf("a");}
{TK_B}      {printf("b");}
{TK_C}      {printf("c");}
{TK_D}      {printf("d");}
{TK_E}      {printf("e");}
{TK_F}      {printf("f");}
{TK_G}      {printf("g");}
{TK_H}      {printf("h");}
{TK_I}      {printf("i");}
{TK_J}      {printf("j");}
{TK_K}      {printf("k");}
{TK_L}      {printf("l");}
{TK_M}      {printf("m");}
{TK_N}      {printf("n");}
{TK_O}      {printf("o");}
{TK_P}      {printf("p");}
{TK_Q}      {printf("q");}
{TK_R}      {printf("r");}
{TK_S}      {printf("s");}
{TK_T}      {printf("t");}
{TK_U}      {printf("u");}
{TK_V}      {printf("v");}
{TK_W}      {printf("w");}
{TK_X}      {printf("x");}
{TK_Y}      {printf("y");}
{TK_Z}      {printf("z");}
.           ;

%%

int main(){
    extern FILE *yyin;
    yyin = fopen("arquivo.txt", "r");
    yylex();
}