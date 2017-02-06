#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int encode_upper(int letter, int key);
int encode_lower(int letter, int key);

int main(int argc, string argv[]) {
      if (argc != 2) {
                printf("Usage: ./caesar k\n");
                        return 1;
                            }
          int key = atoi(argv[1]);
              
              printf("plaintext: ");
                  string phrase = get_string();
                      
                      printf("ciphertext: ");
                          for (int i=0; i<strlen(phrase); i++) {
                                    if (isalpha(phrase[i])) {
                                                  if (isupper(phrase[i])) {
                                                                    printf("%c", encode_upper(phrase[i], key));            
                                                                                } else {
                                                                                                  printf("%c", encode_lower(phrase[i], key));            
                                                                                                              }
                                                          } else {
                                                                        printf("%c", phrase[i]);
                                                                                }
                                        }
                              printf("\n");
}

int encode_upper(int letter, int key) {
      return 65 + ((letter - 65 + key) % 26);
}

int encode_lower(int letter, int key) {
      return 97 + ((letter - 97 + key) % 26);
}
