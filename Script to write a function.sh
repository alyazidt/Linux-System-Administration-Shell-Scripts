#!/bin/bash

LineCount=0

 function count_words() {
  printf "%d words in line %d\n" $(echo $1 | wc -w) $2
}

while IFS='' read -r LinefromFile || [[ -n "${LinefromFile}" ]]; do

  ((LineCount++))
  count_words "$LinefromFile" $LineCount

done < "$1"

  count_words "This isn't in the loop" 99
