#!/bin/bash

# Test script for Q23
# This tests the recursive calculateGCD function.

gcc src/q23.c -o q23_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Standard case
((total_tests++))
output=$(./q23_exec 54 24)
if echo "$output" | grep -q "6"; then
    echo "Test Case 1 (54, 24) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (54, 24) FAILED"
fi

# Test Case 2: Co-prime numbers
((total_tests++))
output=$(./q23_exec 17 13)
if echo "$output" | grep -q "1"; then
    echo "Test Case 2 (17, 13) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (17, 13) FAILED"
fi

# Test Case 3: One number is zero
((total_tests++))
output=$(./q23_exec 100 0)
if echo "$output" | grep -q "100"; then
    echo "Test Case 3 (100, 0) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (100, 0) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q23_exec
exit 0