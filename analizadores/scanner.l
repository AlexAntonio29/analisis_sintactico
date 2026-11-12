%{
    //Flex (analizador lexico)
    #include "parser.hpp"

    int linea = 1;
%}

op [-+*/();]
num 0|[1-9][0-9]*
wsp [\t]
nl \n
%%
{wsp} ;
{num} return _num;
{op} return *yytext;
{nl} linea++;
       return -1;

<<EOF>> return 0;
%%

int yywrap(){return 1;}

 