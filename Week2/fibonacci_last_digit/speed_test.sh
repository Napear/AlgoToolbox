#!/usr/bin/env bash

TEST_CASES=(924343 10000000 234934 34489)
EX_FILE=fibonacci_last_digit

rm runtimes* #remove previously stored runs

for i in ${TEST_CASES[@]}; do
    echo -e "\nRuntime for $i" >> runtimes_ruby.txt
    (time echo -e "$i"|ruby $EX_FILE.rb) >> runtimes_ruby.txt 2>&1

    echo "Runtime for $i" >> runtimes_python.txt
    (time echo -e "$i"|python3 $EX_FILE.py) >> runtimes_python.txt 2>&1

    echo "Runtime for $i" >> runtimes_cpp.txt
    (time echo -e "$i"|./$EX_FILE) >> runtimes_cpp.txt 2>&1
done