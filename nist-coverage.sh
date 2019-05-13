#!/usr/bin/env bash

allItems=$(cat ./nist-items.txt)
count=0
covered=0
for item in $allItems; do
    let "count=count+1"
    itemCount=`grep -ir "[$item]" Master_Security_Policy.md ./policies/ | wc -l` 
    if [ $itemCount != 0 ]; then
        echo "$item is covered"
        let "covered=covered+1"
    else
        echo "None found for $item"
    fi
done

echo "Coverage: $covered out of $count"