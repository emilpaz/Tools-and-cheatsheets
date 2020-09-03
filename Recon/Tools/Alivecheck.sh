#!/bin/bash

for protocol in 'http://' 'https://'; do
    while read line;
    do
        code = $(timeout 5 curl --write-out "%{http_code}" --output /dev/null --silent --insecure $protocol$line)
    done < input.txt
    if [ $code = "000" ]; then
        echo "$protocol$line: not responding"
    else
        echo "$protocol$line: $code" >> alive.txt
    fi
done