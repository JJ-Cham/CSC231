#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    if (argc < 2){
        printf("Syntax: %s filename\n", argv[0]);
        return 1;
    }

    FILE *filep = fopen(argv[1], "r");
    if (!filep){
        printf("Error opening file %s\n", argv[1]);
        return 1;
    }

    int capacity = 5;
    char *dict = malloc(capacity * sizeof(char));
    int dictSize = 0;
    
    int code;
    while (fscanf(filep, "%d", &code)==1){
        if (code == 0){
            int ascii;
            if (fscanf(filep, "%d", &ascii)!= 1) break;
            if (dictSize == capacity){
                capacity *= 2;
                dict = realloc(dict, capacity * sizeof(char));
            }
            dictSize++;
            dict[dictSize] = (char)ascii;

            putchar(dict[dictSize]);
            } else {
                if(code >= 1 && code <= dictSize){
                    putchar(dict[code]);
                }
        }
    }
    fclose(filep);
    free(dict);
    return 0;+
}