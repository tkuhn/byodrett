rm -f files/rett-nanopub-uris.txt
APIURL='http://petapico.d2s.labs.vu.nl/api/database/api.php'
SEARCHURI='http%3A%2F%2Flinkedlifedata.com%2Fresource%2Fumls%2Fid%2FC0035372'
wget -O - "$APIURL?search-uri=$SEARCHURI&page=1&assertion=on&format=text" \
  >> files/rett-nanopub-uris.txt
wget -O - "$APIURL?search-uri=$SEARCHURI&page=2&assertion=on&format=text" \
  >> files/rett-nanopub-uris.txt
