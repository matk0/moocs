#include <stdio.h>

int main(void)
{
  int n;
  printf("Please give me an int: ");
  scanf("%d", &n);

  if (n>0)
  {
    printf("You picked a positive integer!\n");
  } 
  else
  {
    printf("You picked a negative integer!\n");
  }
}

