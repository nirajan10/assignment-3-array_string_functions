#!/bin/bash

# Test script for Q30
# This tests the recursive countOccurrences function.

gcc src/q30.c -o q30_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Multiple occurrences
((total_tests++))
output=$(./q30_exec "banana" "a")
if echo "$output" | grep -q "3"; then
    echo "Test Case 1 (banana, a) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (banana, a) FAILED"
fi

# Test Case 2: No occurrences
((total_tests++))
output=$(./q30_exec "hello" "x")
if echo "$output" | grep -q "0"; then
    echo "Test Case 2 (hello, x) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (hello, x) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q30_exec
exit 0