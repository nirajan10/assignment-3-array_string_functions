// Write a recursive function named isPalindrome that takes a string as input and returns 1 if it is a palindrome (reads the same forwards and backwards), and 0 otherwise.

#include <stdio.h>
#include <string.h>

int isPalindrome(char str[], int start, int end) {
    if(start >= end) return 1;
    if(str[start] != str[end]) return 0;
    return isPalindrome(str, start + 1, end - 1);
}

int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);
    if(isPalindrome(str, 0, strlen(str) - 1)) printf("Palindrome\n");
    else printf("Not a palindrome\n");
    return 0;
}
