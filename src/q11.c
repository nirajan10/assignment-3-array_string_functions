// Write a function named calculateAverage that takes an array of integers as input and returns the average of the numbers.

#include <stdio.h>

float calculateAverage(int arr[], int n) {
    int sum = 0;
    for(int i=0; i<n; i++) sum += arr[i];
    return (float)sum / n;
}

int main() {
    int n;
    printf("Enter number of elements: ");
    scanf("%d", &n);
    int arr[n];
    for(int i=0; i<n; i++) scanf("%d", &arr[i]);
    printf("Average: %.2f\n", calculateAverage(arr, n));
    return 0;
}
