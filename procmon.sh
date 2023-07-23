#!/bin/bash

old_process=$(ps -ef | awk '!($2="")'|awk '!($2="")' | awk '!($2="")'| awk '!($2="")'| awk '!($2="")'| awk '!($2="")')

while true; do
    new_process=$(ps -ef | awk '!($2="")'|awk '!($2="")' | awk '!($2="")'| awk '!($2="")'| awk '!($2="")'| awk '!($2="")')

    diff <(echo "$old_process") <(echo "$new_process") | grep "[\>\<]" | grep -vE "procmon|awk|kworker"
    old_process=$new_process
done

