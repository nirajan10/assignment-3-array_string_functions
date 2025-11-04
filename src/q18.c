// Write a function named findPrimeNumbers that takes an integer n as input and prints all prime numbers from 1 to n.

#include <stdio.h>

int isPrime(int num) {
    if(num < 2) return 0;
    for(int i=2; i*i<=num; i++)
        if(num % i == 0) return 0;
    return 1;
}

void findPrimeNumbers(int n) {
    for(int i=1; i<=n; i++)
        if(isPrime(i)) printf("%d ", i);
    printf("\n");
}

int main() {
    int n;
    printf("Enter n: ");
    scanf("%d", &n);
    findPrimeNumbers(n);
    return 0;
}
