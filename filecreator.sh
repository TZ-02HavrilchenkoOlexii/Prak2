#!/bin/bash


Name="olexii"
num_files=25

last_number=$(ls -1 | grep -Eo '[0-9]+' | sort -n | tail -n 1)
last_number="${last_number:-0}"

for ((i = last_number + 1; i <= last_number + num_files; i++)); do
  filename="${Name}${i}"
  touch "$filename"
done


