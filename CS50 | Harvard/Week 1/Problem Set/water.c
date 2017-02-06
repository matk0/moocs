#include <cs50.h>
#include <stdio.h>

int main(void) {
  printf("Minutes: ");
  int minutes = get_int();

  int ounces_per_minute = 192;
  int ounces_in_a_bottle = 16;

  int bottles = (minutes*ounces_per_minute)/ounces_in_a_bottle;

  printf("Bottles: %i\n", bottles);
}
