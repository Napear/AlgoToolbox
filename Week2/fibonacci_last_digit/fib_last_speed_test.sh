#!/usr/bin/env bash

EX_FILE=fibonacci_last_digit
TEST_CASES=" 24 453 345345 590459 10000000"
rm runtimes* #remove previously stored runs

for i in $TEST_CASES; do
    echo -e "\nRuntime for $i" >> runtimes_ruby.txt
    (time echo -e "$i"|ruby $EX_FILE.rb) >> runtimes_ruby.txt 2>&1

    echo -e "\nRuntime for $i" >> runtimes_python.txt
    (time echo -e "$i"|python3 $EX_FILE.py) >> runtimes_python.txt 2>&1

    echo -e "\nRuntime for $i" >> runtimes_cpp.txt
    (time echo -e "$i"|./cpp_run) >> runtimes_cpp.txt 2>&1
done