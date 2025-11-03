#!/bin/bash

# Test script for Q19
# This tests the calculateFactorialSeries function.

gcc src/q19.c -o q19_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Series up to 5
((total_tests++))
output=$(./q19_exec 5)
if echo "$output" | grep -q "1" && \
   echo "$output" | grep -q "2" && \
   echo "$output" | grep -q "6" && \
   echo "$output" | grep -q "24" && \
   echo "$output" | grep -q "120"; then
    echo "Test Case 1 (Up to 5) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Up to 5) FAILED"
fi

# Test Case 2: Series up to 1
((total_tests++))
output=$(./q19_exec 1)
if echo "$output" | grep -q "1"; then
    echo "Test Case 2 (Up to 1) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Up to 1) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q19_exec
exit 0