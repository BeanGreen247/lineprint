#include <stdio.h>

void main(int argc, char *argv[]) {
   FILE *f=fopen(argv[1],"r");
    int size;
    char buffer[1000];
    while (size=fread(buffer,1000,sizeof(char),f)>0) {
    fwrite(buffer,size,sizeof(char),stdout);
    }
    fclose(f);
    return 0;
}
