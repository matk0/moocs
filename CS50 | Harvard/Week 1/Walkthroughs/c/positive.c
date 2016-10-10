#include <stdio.h>

int main(void)
{
  int n;
  do
  {
    printf("Please give me a positive int: ");
    scanf("%d", &n);
  }
  while (n < 1);
  printf("Thanks for the positive int!\n");
}
