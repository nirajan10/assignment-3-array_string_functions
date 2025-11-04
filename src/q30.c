//  Write a recursive function named countOccurrences that takes a string and a character as input and returns the number of times the character appears in the string.

#include <stdio.h>
#include <string.h>

int countOccurrences(char str[], char ch, int index) {
    if(str[index] == '\0') return 0;
    int count = (str[index] == ch) ? 1 : 0;
    return count + countOccurrences(str, ch, index + 1);
}

int main() {
    char str[100], ch;
    printf("Enter a string: ");
    scanf("%s", str);
    printf("Enter a character: ");
    scanf(" %c", &ch);
    printf("Occurrences: %d\n", countOccurrences(str, ch, 0));
    return 0;
}
