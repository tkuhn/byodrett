cat files/proteinatlas.trig \
  | sed -r 's/^(:.*) a np:Nanopublication .$/\1_head {\n\1 a np:Nanopublication ./' \
  | sed 's/^\(:.*\)_assertion {\s*$/}\n\1_assertion {/' \
  > files/proteinatlas-transformed.trig
