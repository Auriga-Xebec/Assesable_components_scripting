#!/bin/bash

file_looper=$(< file_names.txt)

for i in $file_looper; do
    [ -d "$i" ] && echo "$i Is a directory" || [ -f "$i" ] && echo "$i Is a file" || echo "Help i am stuck in a hole"
    #echo $i
    continue
done    


