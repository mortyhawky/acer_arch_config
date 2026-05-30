#/usr/bin/env bash

echo REPL
echo =
echo Read Evaluate Print Loop

pwd
pwd --help
pwd -L
pwd -P

mkdir foo
cd foo
touch newfile.txt
rm newfile.txt
cd ..
rm foo
ls -la
