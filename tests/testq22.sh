#!/bin/bash

# Test script for Q22
# This tests the recursive calculateFibonacci function.

gcc src/q22.c -o q22_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: 9th Fibonacci number
((total_tests++))
output=$(./q22_exec 9)
if echo "$output" | grep -q "34"; then
    echo "Test Case 1 (n=9) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (n=9) FAILED"
fi

# Test Case 2: Base case n=1
((total_tests++))
output=$(./q22_exec 1)
if echo "$output" | grep -q "1"; then
    echo "Test Case 2 (n=1) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (n=1) FAILED"
fi

# Test Case 3: Base case n=0
((total_tests++))
output=$(./q22_exec 0)
if echo "$output" | grep -q "0"; then
    echo "Test Case 3 (n=0) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (n=0) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q22_exec
exit 0