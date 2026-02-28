#include <stdio.h>
#include <string.h>


int main( int argc, char *argv[] ) {
    char fileName[100];
    FILE *filep;
    int c; 

    // displaysyntaxifnoargumentspassedoncommandline
    if ( argc <= 1 ) {
        printf("Syntax: %s filename\n", argv[0] );
        return 1;
    }

    //copy filename 
    // if an argument is passed, it must be a file name
    strcpy(fileName, argv[1]);

    //open file 
    filep = fopen(fileName, "r");
    //just in case 
    if ( filep == NULL ) {
        printf("Error opening file %s\n", fileName);
        return 1;
    }

    //read file letter by letter to change each g to gremlin 
    while ( (c = fgetc(filep)) != EOF ) {
        if ( c == 'g' ) {
            printf("gremlin");
        }else if ( c == 'G' ) {
            printf("GREMLIN");
        } else {
            putchar(c);
        }
    }
    fclose(filep);
    return 0;
} 