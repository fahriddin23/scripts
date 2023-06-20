#!/bin/bash

# echo "Hello World $$" ## $$ is t oprint out the PID

echo "$1 is currently eating $2, at the same time drinking $3 -- Total # of arguments: $@"

echo "$0  has input of $# arguments."

echo $?

