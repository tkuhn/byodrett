rm -f files/rett-nanopub.trig
cat files/rett-nanopub-uris.txt | awk '{ print "np get "$1" >> files/rett-nanopubs.trig" }' | bash
