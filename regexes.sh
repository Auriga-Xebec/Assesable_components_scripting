#!/bin/bash

#grep -r "sed" haystack_grep.txt
#grep -r "^m" haystack_grep.txt
#grep -E "([[:digit:]]{3})" haystack_grep.txt
grep -Pr '\b[A-za-z]\b' # haystack_grep.txt
#grep -Pr '\b\d{3}\b'
#grep -Pr 'a{2}'