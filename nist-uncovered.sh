#!/usr/bin/env bash

allItems=$(cat ./nist-items.txt)
count=0
uncovered=0
for item in $allItems; do
    let "count=count+1"
    itemCount=`grep -ir "$item" Master_Security_Policy.md ./policies/ | wc -l` 
    if [ $itemCount == 0 ]; then
        let "uncovered=uncovered+1"
        echo "None found for $item"
    fi
done

echo "Uncovered: $uncovered out of $count"