#!/bin/bash

gcc src/q3.c -o q3_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Unsorted positive numbers
((total_tests++))
output=$(./q3_exec 5 2 8 1 9)
expected="1 2 5 8 9"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 1 (Unsorted) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Unsorted) FAILED"
fi

# Test Case 2: Already sorted numbers
((total_tests++))
output=$(./q3_exec 10 20 30 40)
expected="10 20 30 40"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 2 (Already Sorted) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Already Sorted) FAILED"
fi

# Test Case 3: Mixed positive and negative numbers
((total_tests++))
output=$(./q3_exec 0 -5 10 -2 3)
expected="-5 -2 0 3 10"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 3 (Mixed Numbers) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Mixed Numbers) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q3_exec
exit 0