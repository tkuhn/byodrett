mkdir -p lists/foxg1

cat foxg1-uris.txt \
  | echo "$(perl -MURI::Escape -e 'foreach $l ( <STDIN> ) { print uri_escape($l) . "\n"; }' )" \
  | awk '{ print "wget -O lists/foxg1/"$1".txt \047http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri="$1"&page=1&assertion=on&format=text\047" }' \
  | bash

find lists/foxg1 -empty -type f -delete
