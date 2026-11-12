#include <iostream>

extern FILE *yyin;
extern int yyparse();

using namespace std;

int main(int argc, const char * argv[]){

    yyin = fopen("prueba.txt", "r");

    if(yyparse()== 0 ) cout << "OK\n";
    else cout << "Mal\n";

    fclose(yyin);

    return 0;
}