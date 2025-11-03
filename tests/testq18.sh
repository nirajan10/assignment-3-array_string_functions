#!/bin/bash

# Test script for Q18
# This tests the findPrimeNumbers function.

gcc src/q18.c -o q18_exec
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

total_tests=0
passed_tests=0

# Test Case 1: Primes up to 20
((total_tests++))
output=$(./q18_exec 20)
expected="2 3 5 7 11 13 17 19"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 1 (Up to 20) PASSED"
    ((passed_tests++))
else
    echo "Test Case 1 (Up to 20) FAILED"
fi

# Test Case 2: Primes up to 10
((total_tests++))
output=$(./q18_exec 10)
expected="2 3 5 7"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 2 (Up to 10) PASSED"
    ((passed_tests++))
else
    echo "Test Case 2 (Up to 10) FAILED"
fi

# Test Case 3: Edge case with small n
((total_tests++))
output=$(./q18_exec 2)
expected="2"
if echo "$output" | grep -q "$expected"; then
    echo "Test Case 3 (Up to 2) PASSED"
    ((passed_tests++))
else
    echo "Test Case 3 (Up to 2) FAILED"
fi

echo "----------------------------------------"
echo "Summary: $passed_tests / $total_tests tests passed."

rm q18_exec
exit 0