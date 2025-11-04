// Write a C program to sort an array of integers in ascending order using a sorting algorithm of your choice (e.g., bubble sort, selection sort, insertion sort).

#include <stdio.h>

int main() {
    int n, i, j;
    printf("Enter number of elements: ");
    scanf("%d", &n);
    int arr[n];
    for(i=0; i<n; i++) scanf("%d", &arr[i]);

    for(i=0; i<n-1; i++)
        for(j=0; j<n-1-i; j++)
            if(arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }

    printf("Sorted array: ");
    for(i=0; i<n; i++) printf("%d ", arr[i]);
    return 0;
}
