#!/usr/bin/env bash

EX_FILE=lcm
TEST_CASES=( "18 35" "2349 4379" "234348934 899343297" "123693423 369428172" )
rm runtimes* #remove previously stored runs

for i in "${TEST_CASES[@]}"; do
    echo -e "\nRuntime for $i" >> runtimes_ruby.txt
    (time echo -e "$i"|ruby $EX_FILE.rb) >> runtimes_ruby.txt 2>&1

    echo -e "\nRuntime for $i" >> runtimes_python.txt
    (time echo -e "$i"|python3 $EX_FILE.py) >> runtimes_python.txt 2>&1

    echo -e "\nRuntime for $i" >> runtimes_cpp.txt
    (time echo -e "$i"|./cpp_run) >> runtimes_cpp.txt 2>&1
done