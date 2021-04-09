#!/bin/bash
mkdir -p tweet_jsons
input="follows.txt"
while IFS= read -r line
do
  test="snscrape --jsonl --since 2021-01-1 twitter-user ${line} > ./tweet_jsons/${line}.json"
  output=$(eval "$test")
  echo "$output"
done < "$input"
