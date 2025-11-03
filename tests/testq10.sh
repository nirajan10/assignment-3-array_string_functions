#!/bin/bash

# Test script for Q10
# The program should take two strings and concatenate them without using library functions.

gcc src/q10.c -o q10_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Two simple words
((total_tests++))
output=$(./q10_exec "hello" "world")
if echo "$output" | grep -q "helloworld"; then
    echo "Test Case 1 (Simple Words) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Simple Words) FAILED"
fi

# Test Case 2: One empty string
((total_tests++))
output=$(./q10_exec "test" "")
if echo "$output" | grep -q "test"; then
    echo "Test Case 2 (One Empty) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (One Empty) FAILED"
fi

# Test Case 3: Strings with spaces (must be quoted)
((total_tests++))
output=$(./q10_exec "first part" " second part")
if echo "$output" | grep -q "first part second part"; then
    echo "Test Case 3 (With Spaces) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (With Spaces) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q10_exec
exit 0