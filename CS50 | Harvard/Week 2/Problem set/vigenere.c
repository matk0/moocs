#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int encode_upper(int letter, int key);
int encode_lower(int letter, int key);

int main(int argc, string argv[]) {
  if (argc != 2) {
    printf("Usage: ./vigenere k\n");
    return 1;
  }
  string key = argv[1];

  for (int i = 0; i < strlen(key); i++) {
    if (!isalpha(key[i])) {
      printf("Usage: ./vigenere k\n");
      return 1;
    }
  }

  printf("plaintext: ");
  string phrase = get_string();

  printf("ciphertext: ");

  int j = 0;
  for (int i=0; i<strlen(phrase); i++) {
    if (isalpha(phrase[i])) {
      int current_key = toupper(key[j]) - 65;
      if (isupper(phrase[i])) {
        printf("%c", encode_upper(phrase[i], current_key));
        j++;
      } else {
        printf("%c", encode_lower(phrase[i], current_key));
        j++;
      }
    } else {
      printf("%c", phrase[i]);
    }
    if (j == strlen(key)) {
      j = 0;
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
