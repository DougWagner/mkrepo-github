#!/bin/bash

# This script installs mkrepo-github into the $HOME/bin directory.
# If $HOME/bin is not in your PATH variable, you will need to add it
# to your PATH to use it from anywhere.
# If dir argument is specified, installs there instead.

DIR=$HOME/bin

if [ $# -gt 1 ]
then
    echo "Too many arguments"
    exit
fi
if [ $# -eq 1 ]
then
    case $1 in 
        --dir=*)
        DIR="${1#*=}"
        ;;
        *)
        echo "Invalid argument"
        echo "Accepted arguments: dir"
        echo "Usage: install.sh"
        echo "       install.sh --dir=[DIR]"
        exit
    esac
fi

if [[ ! -d $DIR ]]
then
    mkdir -p $DIR
fi

cp -p mkrepo-github $DIR
