#include <stdio.h>

int main(void)
{
  printf("State your name: ");
  char name[100];
  fgets(name, 100, stdin);
  printf("hello, %s\n", name);
}
