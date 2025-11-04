// Write a function named calculateGCD that takes two integers as input and returns their greatest common divisor (GCD).

#include <stdio.h>

int calculateGCD(int a, int b) {
    while(b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

int main() {
    int a, b;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    printf("GCD: %d\n", calculateGCD(a, b));
    return 0;
}
