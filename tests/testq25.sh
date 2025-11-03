#!/bin/bash

# Test script for Q25
# This tests the recursive calculateSumOfDigits function.

gcc src/q25.c -o q25_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Multi-digit number
((total_tests++))
output=$(./q25_exec 12345) # 1+2+3+4+5 = 15
if echo "$output" | grep -q "15"; then
    echo "Test Case 1 (12345) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (12345) FAILED"
fi

# Test Case 2: Single-digit number (Base Case)
((total_tests++))
output=$(./q25_exec 9)
if echo "$output" | grep -q "9"; then
    echo "Test Case 2 (9) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (9) FAILED"
fi

# Test Case 3: Number with a zero
((total_tests++))
output=$(./q25_exec 708) # 7+0+8 = 15
if echo "$output" | grep -q "15"; then
    echo "Test Case 3 (708) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (708) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q25_exec
exit 0