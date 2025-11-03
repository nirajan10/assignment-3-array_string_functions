#!/bin/bash

# Test script for Q5
# The program should take two sorted lists of numbers, separated by the word "MERGE",
# and print a single merged, sorted list.

gcc src/q5.c -o q5_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Standard merge
((total_tests++))
output=$(./q5_exec 1 5 10 MERGE 2 6 12)
expected="1 2 5 6 10 12"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 1 (Standard) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Standard) FAILED"
fi

# Test Case 2: Different lengths
((total_tests++))
output=$(./q5_exec 10 20 MERGE 5 15 25 30)
expected="5 10 15 20 25 30"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 2 (Different Lengths) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Different Lengths) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q5_exec
exit 0