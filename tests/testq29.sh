#!/bin/bash

# Test script for Q29
# This tests the recursive isPalindrome function.

gcc src/q29.c -o q29_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: An odd-length palindrome
((total_tests++))
output=$(./q29_exec "level")
if echo "$output" | grep -iq "is a palindrome"; then
    echo "Test Case 1 (Odd Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Odd Palindrome) FAILED"
fi

# Test Case 2: An even-length palindrome
((total_tests++))
output=$(./q29_exec "noon")
if echo "$output" | grep -iq "is a palindrome"; then
    echo "Test Case 2 (Even Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Even Palindrome) FAILED"
fi

# Test Case 3: A string that is not a palindrome
((total_tests++))
output=$(./q29_exec "recursive")
if echo "$output" | grep -iq "not.*palindrome"; then
    echo "Test Case 3 (Not a Palindrome) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Not a Palindrome) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q29_exec
exit 0