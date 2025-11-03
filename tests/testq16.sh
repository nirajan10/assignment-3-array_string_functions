#!/bin/bash

# Test script for Q16
# This tests the reverseArray function.

gcc src/q16.c -o q16_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Even number of elements
((total_tests++))
output=$(./q16_exec 10 20 30 40)
expected="40 30 20 10"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 1 (Even Elements) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Even Elements) FAILED"
fi

# Test Case 2: Odd number of elements
((total_tests++))
output=$(./q16_exec 1 2 3 4 5)
expected="5 4 3 2 1"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 2 (Odd Elements) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Odd Elements) FAILED"
fi

# Test Case 3: Single element
((total_tests++))
output=$(./q16_exec 99)
expected="99"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 3 (Single Element) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Single Element) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q16_exec
exit 0