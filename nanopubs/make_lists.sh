# MECP2

cat ../entity-search/lists/mecp2/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F4204%0A.all.txt | sort > lists/mecp2.pre.txt
cat ../entity-search/lists/mecp2/http%3A%2F%2Fwww.genenames.org%2Fcgi-bin%2Fgene_symbol_report%3Fhgnc_id%3D6990%0A.txt | sort >> lists/mecp2.pre.txt
cat ../entity-search/lists/mecp2/http%3A%2F%2Fwww.ncbi.nlm.nih.gov%2Fgene%2F4204%0A.txt | sort >> lists/mecp2.pre.txt

echo "Number of MECP2 nanopubs:"
cat lists/mecp2.pre.txt | wc -l

cat lists/mecp2.pre.txt | sort -u > lists/mecp2.txt
rm lists/mecp2.pre.txt

echo "Number of unique MECP2 nanopubs:"
cat lists/mecp2.txt | wc -l


# FOXG1

cat ../entity-search/lists/foxg1/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F2290%09%0A.txt | sort > lists/foxg1.pre.txt
cat ../entity-search/lists/foxg1/http%3A%2F%2Fwww.ncbi.nlm.nih.gov%2Fgene%2F2290%09%0A.txt | sort >> lists/foxg1.pre.txt

echo "Number of FOXG1 nanopubs:"
cat lists/foxg1.pre.txt | wc -l

cat lists/foxg1.pre.txt | sort -u > lists/foxg1.txt
rm lists/foxg1.pre.txt

echo "Number of unique FOXG1 nanopubs:"
cat lists/foxg1.txt | wc -l


# CDKL5

cat ../entity-search/lists/cdkl5/http%3A%2F%2Fidentifiers.org%2Fncbigene%2F6792%0A.txt | sort > lists/cdkl5.pre.txt
cat ../entity-search/lists/cdkl5/http%3A%2F%2Fwww.ncbi.nlm.nih.gov%2Fgene%2F6792%0A.txt | sort >> lists/cdkl5.pre.txt

echo "Number of CDKL5 nanopubs:"
cat lists/cdkl5.pre.txt | wc -l

cat lists/cdkl5.pre.txt | sort -u > lists/cdkl5.txt
rm lists/cdkl5.pre.txt

echo "Number of unique CDKL5 nanopubs:"
cat lists/cdkl5.txt | wc -l


# Rett Syndrome

cat ../disgenet-rett/files/rett-nanopub-uris.txt | sort -u > lists/rett.txt

