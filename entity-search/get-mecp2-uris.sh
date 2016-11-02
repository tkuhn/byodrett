mkdir -p lists/mecp2

cat mecp2-uris.txt \
  | echo "$(perl -MURI::Escape -e 'foreach $l ( <STDIN> ) { print uri_escape($l) . "\n"; }' )" \
  | awk '{ print "wget -O lists/mecp2/"$1".txt \047http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri="$1"&page=1&assertion=on&format=text\047" }' \
  | bash

find lists/mecp2 -empty -type f -delete
