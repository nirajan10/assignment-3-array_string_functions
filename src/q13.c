// Write a function named findFactorial that takes an integer as input and returns its factorial.

#include <stdio.h>

long findFactorial(int n) {
    long fact = 1;
    for(int i=1; i<=n; i++) fact *= i;
    return fact;
}

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    printf("Factorial: %ld\n", findFactorial(n));
    return 0;
}
