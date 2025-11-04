// Write a C program to find the length of a string without using the built-in string functions.

#include <stdio.h>

int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);

    int length = 0;
    while(str[length] != '\0') length++;
    printf("Length: %d\n", length);
    return 0;
}
