#include <stdio.h>

int main(void)
{
  printf("Temperature in F: ");
  float f;
  scanf("%f", &f);
  float c = 5.0  / 9.0 * (f - 32.0);

  printf("%f\n", c);
}
