#!/bin/bash

# Test script for Q28
# This tests the recursive calculateBinary function (which prints the result).

gcc src/q28.c -o q28_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: 13 -> 1101
((total_tests++))
output=$(./q28_exec 13)
if echo "$output" | grep -q "1101"; then
    echo "Test Case 1 (13) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (13) FAILED"
fi

# Test Case 2: 42 -> 101010
((total_tests++))
output=$(./q28_exec 42)
if echo "$output" | grep -q "101010"; then
    echo "Test Case 2 (42) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (42) FAILED"
fi

# Test Case 3: 0 -> 0
((total_tests++))
output=$(./q28_exec 0)
if echo "$output" | grep -q "0"; then
    echo "Test Case 3 (0) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (0) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q28_exec
exit 0