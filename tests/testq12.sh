#!/bin/bash

# Test script for Q12
# This tests the isPalindrome function.

gcc src/q12.c -o q12_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Is a palindrome
((total_tests++))
output=$(./q12_exec "racecar")
if echo "$output" | grep -iq "is a palindrome"; then
    echo "Test Case 1 (Is Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Is Palindrome) FAILED"
fi

# Test Case 2: Is not a palindrome
((total_tests++))
output=$(./q12_exec "computer")
if echo "$output" | grep -iq "is not a palindrome"; then
    echo "Test Case 2 (Not Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Not Palindrome) FAILED"
fi

# Test Case 3: Single character (is a palindrome)
((total_tests++))
output=$(./q12_exec "a")
if echo "$output" | grep -iq "is a palindrome"; then
    echo "Test Case 3 (Single Char) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Single Char) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q12_exec
exit 0