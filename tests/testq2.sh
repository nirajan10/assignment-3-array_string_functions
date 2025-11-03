#!/bin/bash

# Test script for Q2
# The C program is expected to take numbers as command-line arguments,
# reverse them, and print the result.

gcc src/q2.c -o q2_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Even number of elements
((total_tests++))
output=$(./q2_exec 1 2 3 4)
expected="4 3 2 1"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 1 (Even Elements) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Even Elements) FAILED"
fi

# Test Case 2: Odd number of elements
((total_tests++))
output=$(./q2_exec 10 20 30 40 50)
expected="50 40 30 20 10"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 2 (Odd Elements) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Odd Elements) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q2_exec
exit 0