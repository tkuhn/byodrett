# unify these URIs about MECP2:
# - http://identifiers.org/ncbigene/4204 - N2N
# - http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=6990 - N1685N
# - http://www.ncbi.nlm.nih.gov/gene/4204 - N2474N

cat ../nanopubs/files/rett-mecp2.gml \
  | sed 's/N1685N/N2N/g' \
  | sed 's/N2474N/N2N/g' \
  | grep -v 'http://rdf.disgenet.org/resource/gda/' \
  > files/rett-mecp2.postprocessed.gml
