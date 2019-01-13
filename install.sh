#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform

    echo "TODO"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    # -- delete previous dat files
    for f in databases/*.dat; do
        rm $f
    done
    # -- create dat files
    for db in databases/*; do
        strfile $db
    done
    # -- copy files to fortune database directory
    cp ./databases/* /usr/share/games/fortunes/
fi
