// Write a C program to merge two sorted arrays into a single sorted array.

#include <stdio.h>

int main() {
    int n1, n2, i=0, j=0, k=0;
    printf("Enter sizes of two arrays: ");
    scanf("%d %d", &n1, &n2);
    int a[n1], b[n2], merged[n1+n2];

    printf("Enter elements for first array: ");
    for(i=0; i<n1; i++) scanf("%d", &a[i]);

    printf("Enter elements for second array: ");
    for(i=0; i<n2; i++) scanf("%d", &b[i]);

    i = j = k = 0;
    while(i<n1 && j<n2) {
        if(a[i] < b[j]) merged[k++] = a[i++];
        else merged[k++] = b[j++];
    }
    while(i<n1) merged[k++] = a[i++];
    while(j<n2) merged[k++] = b[j++];

    printf("Merged array: ");
    for(i=0; i<k; i++) printf("%d ", merged[i]);
    return 0;
}
