//  Write a function named calculateFactorialSeries that takes an integer n as input and prints the factorial series up to n.

#include <stdio.h>

long factorial(int n) {
    long fact = 1;
    for(int i=1; i<=n; i++) fact *= i;
    return fact;
}

void calculateFactorialSeries(int n) {
    for(int i=1; i<=n; i++) printf("%ld ", factorial(i));
    printf("\n");
}

int main() {
    int n;
    printf("Enter n: ");
    scanf("%d", &n);
    calculateFactorialSeries(n);
    return 0;
}
