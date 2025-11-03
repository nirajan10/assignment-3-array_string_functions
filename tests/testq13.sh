#!/bin/bash

# Test script for Q13
# This tests the findFactorial function.

gcc src/q13.c -o q13_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Factorial of 5
((total_tests++))
output=$(./q13_exec 5)
if echo "$output" | grep -q "120"; then
    echo "Test Case 1 (Factorial of 5) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Factorial of 5) FAILED"
fi

# Test Case 2: Factorial of 0
((total_tests++))
output=$(./q13_exec 0)
if echo "$output" | grep -q "1"; then
    echo "Test Case 2 (Factorial of 0) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Factorial of 0) FAILED"
fi

# Test Case 3: Factorial of 1
((total_tests++))
output=$(./q13_exec 1)
if echo "$output" | grep -q "1"; then
    echo "Test Case 3 (Factorial of 1) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Factorial of 1) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q13_exec
exit 0