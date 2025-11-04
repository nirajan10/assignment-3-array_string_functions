// Implement a C program to reverse a string.

#include <stdio.h>

int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);

    int i = 0, j;
    while(str[i] != '\0') i++;
    j = i - 1;

    for(i=0; i<j; i++, j--) {
        char temp = str[i];
        str[i] = str[j];
        str[j] = temp;
    }
    printf("Reversed string: %s\n", str);
    return 0;
}
