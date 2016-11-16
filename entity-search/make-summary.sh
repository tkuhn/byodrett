#!/bin/bash

cd lists

find . -type f \
  | sort \
  > ../files.temp

cat ../files.temp \
  | sed -r 's/^(.*)$/cat \1 | wc -l/' \
  | bash \
  > ../size.temp

cat ../files.temp \
  | sed -r 's/\.\/([a-zA-Z0-9]*)\/(.*)$/\1/' \
  > ../type.temp
cat ../files.temp \
  | sed -r 's/\.\/([a-zA-Z0-9]*)\/(.*).txt$/\2/' \
  | perl -MURI::Escape -e 'foreach $l ( <STDIN> ) { print uri_unescape($l); }' \
  > ../uri.temp

cd ..
paste -d ' ' type.temp uri.temp size.temp
rm *.temp
