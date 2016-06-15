#!/usr/bin/env bash

#checkk the arguments
if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    echo "uasage ./speed_test <folder> <file_prefix> \"<list of values>\""
    exit
fi

EX_FILE=$1/$2
TEST_CASES=$3
rm $1/runtimes* #remove previously stored runs

for i in $TEST_CASES; do
    echo -e "\nRuntime for $i" >> $1/runtimes_ruby.txt
    (time echo -e "$i"|ruby $EX_FILE.rb) >> $1/runtimes_ruby.txt 2>&1

    echo -e "\nRuntime for $i" >> $1/runtimes_python.txt
    (time echo -e "$i"|python3 $EX_FILE.py) >> $1/runtimes_python.txt 2>&1

    echo -e "\nRuntime for $i" >> $1/runtimes_cpp.txt
    (time echo -e "$i"|$1/cpp_run) >> $1/runtimes_cpp.txt 2>&1
done