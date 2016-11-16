#!/bin/bash
#
# Usage:
# $ ./get-uris.sh <name>
#
# Example:
# $ ./get-uris.sh cdkl5
#

mkdir -p lists/$1

cat $1-uris.txt \
  | echo "$(perl -MURI::Escape -e 'foreach $l ( <STDIN> ) { chomp($l); print uri_escape($l) . "\n"; }' )" \
  | awk -v t=$1 '{ print "wget -O lists/"t"/"$1".txt \047http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri="$1"&page=1&assertion=on&format=text\047" }' \
  | bash

find lists/$1 -empty -type f -delete
