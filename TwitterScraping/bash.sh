#!/bin/bash
mkdir -p tweet_jsons
input="follows.txt"
while IFS= read -r line
do
  test="snscrape --jsonl --since 2020-09-01 twitter-search 'from:${line} until:2021-03-31' > ./tweet_jsons/${line}.json"
  output=$(eval "$test")
  echo "$output"
done < "$input"
