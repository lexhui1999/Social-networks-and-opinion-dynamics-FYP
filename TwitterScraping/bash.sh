#!/bin/bash
input="follows.txt"
while IFS= read -r line
do
  test="snscrape --jsonl --since 2020-10-1 twitter-user ${line} > ${line}.json"
  output=$(eval "$test")
  echo "$output"
done < "$input"
