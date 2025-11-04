// Write a function named convertTemperature that takes a temperature value in Celsius and converts it to Fahrenheit. The function should return the converted temperature.

#include <stdio.h>

float convertTemperature(float celsius) {
    return (celsius * 9/5) + 32;
}

int main() {
    float c;
    printf("Enter temperature in Celsius: ");
    scanf("%f", &c);
    printf("Temperature in Fahrenheit: %.2f\n", convertTemperature(c));
    return 0;
}
