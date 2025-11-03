#!/bin/bash

# Test script for Q9
# The program takes a string and a character, then counts the occurrences.

gcc src/q9.c -o q9_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Character exists multiple times
((total_tests++))
output=$(./q9_exec "hello world" "l")
if echo "$output" | grep -q "3"; then
    echo "Test Case 1 (Multiple Occurrences) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Multiple Occurrences) FAILED"
fi

# Test Case 2: Character does not exist
((total_tests++))
output=$(./q9_exec "programming" "z")
if echo "$output" | grep -q "0"; then
    echo "Test Case 2 (No Occurrences) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (No Occurrences) FAILED"
fi

# Test Case 3: Case sensitivity
((total_tests++))
output=$(./q9_exec "Test" "t")
if echo "$output" | grep -q "1"; then
    echo "Test Case 3 (Case Sensitive) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Case Sensitive) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q9_exec
exit 0