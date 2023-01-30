#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[]) {

  printf("There are %d parameters.\n", argc);
  printf("The first parameter is: %s\n", argv[0]);

  for(int i = 0; i < argc; i++) {
    printf("Parameter %d: %s\n", i, argv[i]);
  }

  return(EXIT_SUCCESS);
}
