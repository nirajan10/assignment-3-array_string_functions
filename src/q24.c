// Write a recursive function named calculatePower that takes two integers base and exponent as input and returns the result of raising the base to the exponent.

#include <stdio.h>

int calculatePower(int base, int exponent) {
    if(exponent == 0) return 1;
    return base * calculatePower(base, exponent - 1);
}

int main() {
    int base, exp;
    printf("Enter base and exponent: ");
    scanf("%d %d", &base, &exp);
    printf("Result: %d\n", calculatePower(base, exp));
    return 0;
}
