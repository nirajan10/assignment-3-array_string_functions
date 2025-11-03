#!/bin/bash

gcc src/q6.c -o q6_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Simple string
((total_tests++))
output=$(./q6_exec "hello")
if echo "$output" | grep -q "5"; then
    echo "Test Case 1 (Simple) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Simple) FAILED"
fi

# Test Case 2: Empty string
((total_tests++))
# Passing an empty string as an argument
output=$(./q6_exec "")
if echo "$output" | grep -q "0"; then
    echo "Test Case 2 (Empty) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Empty) FAILED"
fi

# Test Case 3: String with spaces
((total_tests++))
output=$(./q6_exec "hello world")
if echo "$output" | grep -q "11"; then
    echo "Test Case 3 (Spaces) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Spaces) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q6_exec
exit 0