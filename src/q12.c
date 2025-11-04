//  Write a function named isPalindrome that takes a string as input and returns 1 if it is a palindrome (reads the same forwards and backwards), and 0 otherwise.

#include <stdio.h>

int isPalindrome(char str[]) {
    int i = 0, j;
    while(str[i] != '\0') i++;
    j = i - 1;
    for(i=0; i<j; i++, j--)
        if(str[i] != str[j]) return 0;
    return 1;
}

int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);
    if(isPalindrome(str)) printf("Palindrome\n");
    else printf("Not a palindrome\n");
    return 0;
}
