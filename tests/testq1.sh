#!/bin/bash

# Test script for Q1
# The C program is expected to take numbers as command-line arguments
# and print the max and min values.

# Compile the student's code
gcc src/q1.c -o q1_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

# Test Cases
total_tests=0
passed_tests=0

# Test Case 1: Positive numbers
((total_tests++))
output=$(./q1_exec 10 5 42 8 15)
if echo "$output" | grep -q "Maximum.*42" && echo "$output" | grep -q "Minimum.*5"; then
    echo "Test Case 1 (Positive) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Positive) FAILED"
fi

# Test Case 2: Negative and positive numbers
((total_tests++))
output=$(./q1_exec -10 5 -42 8 0)
if echo "$output" | grep -q "Maximum.*8" && echo "$output" | grep -q "Minimum.*-42"; then
    echo "Test Case 2 (Mixed) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Mixed) FAILED"
fi

# Test Case 3: Single element
((total_tests++))
output=$(./q1_exec 100)
if echo "$output" | grep -q "Maximum.*100" && echo "$output" | grep -q "Minimum.*100"; then
    echo "Test Case 3 (Single Element) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Single Element) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

# Cleanup
rm q1_exec
exit 0