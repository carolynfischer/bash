#!/bin/bash
# this will find all valid unique IP addresses is files in the current folder as well as subfolders and print them out lexicographically
ips=`find . -name "*.txt" -print0 |xargs -0 egrep -ho "(0\.0\.0\.0)|(\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b)"`
sorted=$(echo "$ips" | sort -k 1,1 -k 2,2n | uniq)
for i in $sorted; do
    echo $i
done