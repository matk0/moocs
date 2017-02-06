#include <cs50.h>
#include <stdio.h>

int main(void) {

  int height;

  while (true) {
    printf("Height: ");
    height = get_int();    

    bool larger_than_23 = height > 23;
    bool lower_than_1 = height < 0;

    if (lower_than_1 || larger_than_23) {
    } else {
      break;    
    }
  }

  for (int i = 1; i <= height; i++) {
    for (int j = (height - i); j > 0; j--) {
      printf(" ");
    }

    for (int j = 0; j < i; j++) {
      printf("#");
    }

    printf(" ");

    for (int j = 0; j < i; j++) {
      printf("#");
    }

    for (int j = (height - i); j > 0; j--) {
      printf(" ");
    }

    printf("\n");
  }
}
