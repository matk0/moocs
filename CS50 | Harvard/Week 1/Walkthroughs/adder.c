#include <stdio.h>

int main(void)
{
  printf("Please give me an int: ");
  int x;
  scanf("%i", &x);

  printf("Please give me another int: ");
  int y;
  scanf("%i", &y);

  printf("The sum of %i and %i is %i\n", x, y, x+y);
}
