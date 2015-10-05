//
//  Hello World.c
//  
//
//  Created by Matej Lukášik on 01/10/15.
//
//

#include <stdio.h>

int main(void)
{
  printf("Your name please: ");
  char s[100];
  gets(s);
  printf("Hello, %s.\n", s);
}
