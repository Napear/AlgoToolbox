#!/usr/bin/env bash


EX_FILE=fib

rm runtimes* #remove previously stored runs

for i in {2..45}; do
    echo -e "\nRuntime for $i" >> runtimes_ruby.txt
    (time echo -e "$i"|ruby $EX_FILE.rb) >> runtimes_ruby.txt 2>&1

    echo "Runtime for $i" >> runtimes_python.txt
    (time echo -e "$i"|python3 $EX_FILE.py) >> runtimes_python.txt 2>&1

    echo "Runtime for $i" >> runtimes_cpp.txt
    (time echo -e "$i"|./cpp_run) >> runtimes_cpp.txt 2>&1
done