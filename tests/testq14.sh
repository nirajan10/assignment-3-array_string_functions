#!/bin/bash

# Test script for Q14
# This tests the convertTemperature function.

gcc src/q14.c -o q14_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Freezing point
((total_tests++))
output=$(./q14_exec 0)
if echo "$output" | grep -q "32"; then
    echo "Test Case 1 (Freezing) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Freezing) FAILED"
fi

# Test Case 2: Boiling point
((total_tests++))
output=$(./q14_exec 100)
if echo "$output" | grep -q "212"; then
    echo "Test Case 2 (Boiling) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Boiling) FAILED"
fi

# Test Case 3: Negative temperature
((total_tests++))
output=$(./q14_exec -40)
# Check for -40, as it's the same in both scales
if echo "$output" | grep -q -- "-40"; then
    echo "Test Case 3 (Negative) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Negative) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q14_exec
exit 0