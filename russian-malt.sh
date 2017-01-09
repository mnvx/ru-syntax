#!/bin/bash

InputFile=$(mktemp)
OutputFile=$(mktemp)

cat - > $InputFile

python3 /home/ubuntu/soft/ru-syntax/ru-syntax.py -o "$OutputFile" "$InputFile" &>/dev/null

cat "$OutputFile"

rm "$InputFile"
rm "$OutputFile"