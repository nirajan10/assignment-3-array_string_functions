#include <stdio.h>

/**
 * @brief Counts the number of times a character appears in a string.
 * 
 * @param str The string to search in.
 * @param ch The character to search for.
 * @return The number of occurrences.
 */
int countOccurrences(char str[], char ch) {
    int count = 0;
    int i = 0;
    while (str[i] != '\0') {
        if (str[i] == ch) {
            count++;
        }
        i++;
    }
    return count;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s \"<string>\" <char>\n", argv[0]);
        return 1;
    }
    if (argv[2][1] != '\0') {
        printf("Please provide a single character to count.\n");
        return 1;
    }

    char *inputString = argv[1];
    char targetChar = argv[2][0];

    int occurrences = countOccurrences(inputString, targetChar);
    printf("The character '%c' appears %d times.\n", targetChar, occurrences);

    return 0;
}