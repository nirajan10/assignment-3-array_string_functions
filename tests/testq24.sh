#!/bin/bash

# Test script for Q24
# This tests the recursive calculatePower function.

gcc src/q24.c -o q24_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Positive base and exponent
((total_tests++))
output=$(./q24_exec 3 4)
if echo "$output" | grep -q "81"; then
    echo "Test Case 1 (Positive) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Positive) FAILED"
fi

# Test Case 2: Exponent is zero (Base Case)
((total_tests++))
output=$(./q24_exec 10 0)
if echo "$output" | grep -q "1"; then
    echo "Test Case 2 (Exponent Zero) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Exponent Zero) FAILED"
fi

# Test Case 3: Negative base, odd exponent
((total_tests++))
output=$(./q24_exec -2 5)
if echo "$output" | grep -q -- "-32"; then
    echo "Test Case 3 (Negative Base) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Negative Base) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q24_exec
exit 0