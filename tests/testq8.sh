#!/bin/bash

# Test script for Q8
# The program checks if the input string is a palindrome.

gcc src/q8.c -o q8_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Is a palindrome
((total_tests++))
output=$(./q8_exec "madam")
if echo "$output" | grep -iq "palindrome"; then
    echo "Test Case 1 (Is Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Is Palindrome) FAILED"
fi

# Test Case 2: Is not a palindrome
((total_tests++))
output=$(./q8_exec "hello")
if echo "$output" | grep -iq "not.*palindrome"; then
    echo "Test Case 2 (Not Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Not Palindrome) FAILED"
fi

# Test Case 3: Palindrome with even length
((total_tests++))
output=$(./q8_exec "level")
if echo "$output" | grep -iq "palindrome"; then
    echo "Test Case 3 (Even Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Even Palindrome) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q8_exec
exit 0