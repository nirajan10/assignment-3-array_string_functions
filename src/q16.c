// Write a function named reverseArray that takes an array of integers as input and reverses the order of the elements in the array.

#include <stdio.h>

void reverseArray(int arr[], int n) {
    for(int i=0, j=n-1; i<j; i++, j--) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}

int main() {
    int n;
    printf("Enter number of elements: ");
    scanf("%d", &n);
    int arr[n];
    for(int i=0; i<n; i++) scanf("%d", &arr[i]);

    reverseArray(arr, n);

    printf("Reversed array: ");
    for(int i=0; i<n; i++) printf("%d ", arr[i]);
    return 0;
}
