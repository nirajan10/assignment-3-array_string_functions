// Implement a C program to count the occurrence of a specific character in a string.

#include <stdio.h>

int main() {
    char str[100], ch;
    int count = 0;
    printf("Enter a string: ");
    scanf("%s", str);
    printf("Enter a character: ");
    scanf(" %c", &ch);

    for(int i=0; str[i]!='\0'; i++)
        if(str[i] == ch) count++;

    printf("Occurrences: %d\n", count);
    return 0;
}
