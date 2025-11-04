// Write a function named calculatePower that takes two integers, base and exponent, as input and returns the result of raising the base to the exponent.

#include <stdio.h>

int calculatePower(int base, int exponent) {
    int result = 1;
    for(int i=0; i<exponent; i++) result *= base;
    return result;
}

int main() {
    int base, exp;
    printf("Enter base and exponent: ");
    scanf("%d %d", &base, &exp);
    printf("Result: %d\n", calculatePower(base, exp));
    return 0;
}
