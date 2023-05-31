package umg.compiladores;

%%

%public
%class Lexer
%char
%line
%column
%cup

%{
    private Symbol symbol(int tipo, Object valor) {
        return new Symbol(tipo, yyline, yycolumn, valor);
    }
%}

palabra = [a-zA-Z]+
digito = [0-9]+
identificador = [a-zA-Z][a-zA-Z0-9]*
espacios_blanco = [\r|\n|\r\n| |\t]

%%

//Reglas léxicas
"void"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }

"extends"  { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"class"     { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"float"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"double"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"int"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"long"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"short"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"String"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"boolean"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"new"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"if"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"else"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"for"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"while"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"do"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"switch"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"case"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"break"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"Scanner"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"next"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextInt"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextFloat"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextLine"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextLong"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextShort"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextBoolean"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"nextDouble"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"out"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"print"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"println"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"return"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"System"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"in"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"true"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"false"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
">"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"<"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"=="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"!="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"<="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
">="         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"+"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"-"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"*"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"^"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"/"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }

"&&"        { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"||"        { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"!"        { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"."         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
";"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
":"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"_"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
","         { System.out.println("Lexema: "
               + yytext()
               + " columna: "
               + yychar
               + " fila: "
               + yyline ); }
"\""         { System.out.println("Lexema: "
               + yytext()
               + " columna: "
               + yychar
               + " fila: "
               + yyline ); }
"'"         { System.out.println("Lexema: "
               + yytext()
               + " columna: "
               + yychar
               + " fila: "
               + yyline ); }
"{"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"}"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"["         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
"]"         { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }
\"[^\"]*\"  { System.out.println("Lexema: "
              + yytext()
              + " columna : "
              + yychar
              + " fila : "
              + yyline ); }

{identificador} { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }

{digito}    { System.out.println("Lexema: "
              + yytext()
              + " columna: "
              + yychar
              + " fila: "
              + yyline ); }

{espacios_blanco}   { /*Ignorar estos símbolos*/ }