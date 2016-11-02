mkdir -p lists

cat mecp2-uris.txt \
  | echo "$(perl -MURI::Escape -e 'foreach $l ( <STDIN> ) { print uri_escape($l) . "\n"; }' )" \
  | awk '{ print "wget -O lists/"$1".txt \047http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri="$1"&page=1&assertion=on&format=text\047" }' \
  | bash

find lists/ -empty -type f -delete
