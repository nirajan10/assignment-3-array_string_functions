#!/bin/bash

# Test script for Q7
# The C program should take a string from the command line and print its reverse.

gcc src/q7.c -o q7_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Odd length string
((total_tests++))
output=$(./q7_exec "hello")
if echo "$output" | grep -q "olleh"; then
    echo "Test Case 1 (Odd Length) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Odd Length) FAILED"
fi

# Test Case 2: Even length string
((total_tests++))
output=$(./q7_exec "world")
if echo "$output" | grep -q "dlrow"; then
    echo "Test Case 2 (Even Length) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Even Length) FAILED"
fi

# Test Case 3: Single character
((total_tests++))
output=$(./q7_exec "a")
if echo "$output" | grep -q "a"; then
    echo "Test Case 3 (Single Character) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Single Character) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q7_exec
exit 0