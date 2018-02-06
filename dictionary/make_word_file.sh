#! /usr/bin/env bash
#set -x
skip=54 # number of lines to skip in espdic.txt
cat espdic.txt | awk -v skip="$skip" -F' :' 'FNR>skip {print $1}' > words_from_espdic.txt
