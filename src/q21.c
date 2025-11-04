// Write a recursive function named calculateFactorial that takes an integer n as input and returns its factorial.

#include <stdio.h>

long calculateFactorial(int n) {
    if(n == 0 || n == 1) return 1;
    return n * calculateFactorial(n-1);
}

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    printf("Factorial: %ld\n", calculateFactorial(n));
    return 0;
}
