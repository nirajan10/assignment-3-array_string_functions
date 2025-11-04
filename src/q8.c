// Write a C program to check if a given string is a palindrome.

#include <stdio.h>

int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);

    int i = 0, j;
    while(str[i] != '\0') i++;
    j = i - 1;
    int flag = 1;
    for(i=0; i<j; i++, j--) {
        if(str[i] != str[j]) { flag = 0; break; }
    }

    if(flag) printf("Palindrome\n");
    else printf("Not a palindrome\n");
    return 0;
}
