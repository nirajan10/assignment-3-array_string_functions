// Write a recursive function named calculateGCD that takes two integers a and b as input and returns their greatest common divisor (GCD).

#include <stdio.h>

int calculateGCD(int a, int b) {
    if(b == 0) return a;
    return calculateGCD(b, a % b);
}

int main() {
    int a, b;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    printf("GCD: %d\n", calculateGCD(a, b));
    return 0;
}
