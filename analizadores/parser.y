%{

    // Bison (analizador sintactico)
    #include <stdio.h>
    extern int yylex();
    int yyerror(const char *);

    extern int linea;
%}

%token _num

%%

lexp: exp ';' | lexp exp ';';

exp: exp '+' term ;
exp: exp '-' term ;
exp: term ;

term: 
      
      term '*' fact  
    | term '/' fact 
    | fact
    ;
 
fact: 
    '('exp ')' 
    | '-' fact  
    | _num
    ;


%%

int yyerror(const char *c){

    printf("%i: %s\n", linea, c);

    return 0;

}