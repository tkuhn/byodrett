echo "# Run the following commands:"
echo "isql-v -U dba -P dba"
echo "SQL> ld_dir('dumps', '*.nq.gz', 'http://www.example.com/default-graph');"
echo "SQL> rdf_loader_run();"
echo "SQL> checkpoint;"
docker exec -it my-virtuoso bash
