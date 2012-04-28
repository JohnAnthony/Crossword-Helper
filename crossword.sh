#!/bin/bash

# Written by John Anthony
# Licensed under the GPLv3
# Enjoy your puzzles

if [[ ! $1 ]]; then
    echo  -e "\
This command requires that exactly one argument be given. Use an underscore to
represent blanks in the word you are trying to discover.

e.g.:
    6 Down) Computer expert, formerly associated with M.I.T. and now associated
    with security breaking.

./crossword.sh __ck_r"
    exit
fi

PART=$( echo $1 | sed 's/_/\\S/g' )
REGEX="^${PART}$"

grep -i $REGEX /usr/share/dict/cracklib-small
