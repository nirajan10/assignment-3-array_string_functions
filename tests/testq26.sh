#!/bin/bash

# Test script for Q26
# This tests the recursive reverseString function.

gcc src/q26.c -o q26_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Simple string
((total_tests++))
output=$(./q26_exec "recursion")
if echo "$output" | grep -q "noisrucer"; then
    echo "Test Case 1 (recursion) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (recursion) FAILED"
fi

# Test Case 2: Palindrome (reverses to itself)
((total_tests++))
output=$(./q26_exec "madam")
if echo "$output" | grep -q "madam"; then
    echo "Test Case 2 (madam) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (madam) FAILED"
fi

# Test Case 3: Empty string
((total_tests++))
output=$(./q26_exec "")
# The C code should print an empty string
if [ -z "$(echo "$output" | grep 'Reversed string:' | cut -d':' -f2 | tr -d ' ')" ]; then
    echo "Test Case 3 (Empty String) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Empty String) FAILED"
fi


echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q26_exec
exit 0