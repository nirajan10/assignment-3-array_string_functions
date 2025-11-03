#!/bin/bash

# Test script for Q27
# This tests the recursive printTriangle function.

gcc src/q27.c -o q27_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Triangle of size 4
((total_tests++))
output=$(./q27_exec 4)
# Check if it has 4 lines and the last line has 4 asterisks
lines=$(echo "$output" | wc -l)
last_line=$(echo "$output" | tail -n 1)
if [ "$lines" -eq 4 ] && [ "$last_line" = "****" ]; then
    echo "Test Case 1 (n=4) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (n=4) FAILED"
fi

# Test Case 2: Triangle of size 1
((total_tests++))
output=$(./q27_exec 1)
if [ "$(echo "$output" | wc -l)" -eq 1 ] && [ "$(echo "$output")" = "*" ]; then
    echo "Test Case 2 (n=1) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (n=1) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q27_exec
exit 0