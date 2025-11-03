#!/bin/bash

# Test script for Q11
# This tests the calculateAverage function.

gcc src/q11.c -o q11_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Simple average
((total_tests++))
output=$(./q11_exec 10 20 30)
# Use grep to check for the floating point number 20.0 or just 20
if echo "$output" | grep -q "20"; then
    echo "Test Case 1 (Simple) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Simple) FAILED"
fi

# Test Case 2: Average with decimal result
((total_tests++))
output=$(./q11_exec 1 2 4)
# Check for 2.33...
if echo "$output" | grep -q "2.33"; then
    echo "Test Case 2 (Decimal) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Decimal) FAILED"
fi

# Test Case 3: Negative numbers
((total_tests++))
output=$(./q11_exec -10 0 10 20)
if echo "$output" | grep -q "5"; then
    echo "Test Case 3 (Negative) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Negative) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q11_exec
exit 0