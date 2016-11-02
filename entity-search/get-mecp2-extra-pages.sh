wget \
  -O lists/mecp2/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A.2.txt \
  'http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri=http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A&page=2&assertion=on&format=text'

wget \
  -O lists/mecp2/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A.3.txt \
  'http://petapico.d2s.labs.vu.nl/api/database/api.php?search-uri=http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A&page=3&assertion=on&format=text'

cat lists/mecp2/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A* > lists/mecp2/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A.all.txt

