mkdir -p lists/cdkl5

cat cdkl5-uris.txt \
  | echo "$(perl -MURI::Escape -e 'foreach $l ( <STDIN> ) { print uri_escape($l) . "\n"; }' )" \
  | awk '{ print "wget -O lists/cdkl5/"$1".txt \047http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri="$1"&page=1&assertion=on&format=text\047" }' \
  | bash

find lists/cdkl5 -empty -type f -delete
