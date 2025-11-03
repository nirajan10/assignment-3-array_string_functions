#!/bin/bash

# Test script for Q4
# The program should find the second largest number from command-line arguments.

gcc src/q4.c -o q4_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Standard case
((total_tests++))
output=$(./q4_exec 10 50 30 40 20)
if echo "$output" | grep -q "40"; then
    echo "Test Case 1 (Standard) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Standard) FAILED"
fi

# Test Case 2: Duplicate largest number
((total_tests++))
output=$(./q4_exec 10 50 30 40 50)
if echo "$output" | grep -q "40"; then
    echo "Test Case 2 (Duplicate Largest) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Duplicate Largest) FAILED"
fi

# Test Case 3: Negative numbers
((total_tests++))
output=$(./q4_exec -10 -5 -30 -2 -50)
if echo "$output" | grep -q -- "-5"; then
    echo "Test Case 3 (Negative Numbers) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Negative Numbers) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q4_exec
exit 0