#!/bin/bash

# Test script for Q21
# This tests the recursive calculateFactorial function.

gcc src/q21.c -o q21_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Factorial of 7
((total_tests++))
output=$(./q21_exec 7)
if echo "$output" | grep -q "5040"; then
    echo "Test Case 1 (Factorial of 7) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Factorial of 7) FAILED"
fi

# Test Case 2: Factorial of 0 (Base Case)
((total_tests++))
output=$(./q21_exec 0)
if echo "$output" | grep -q "1"; then
    echo "Test Case 2 (Factorial of 0) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Factorial of 0) FAILED"
fi

# Test Case 3: Factorial of 10
((total_tests++))
output=$(./q21_exec 10)
if echo "$output" | grep -q "3628800"; then
    echo "Test Case 3 (Factorial of 10) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Factorial of 10) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q21_exec
exit 0