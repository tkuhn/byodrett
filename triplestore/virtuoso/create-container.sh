cd "$( dirname "${BASH_SOURCE[0]}" )"
DIR=`pwd`
echo $DIR

docker run --name my-virtuoso \
    -p 8890:8890 -p 1111:1111 \
    -e DBA_PASSWORD=dba \
    -e SPARQL_UPDATE=true \
    -e DEFAULT_GRAPH=http://www.example.com/default-graph \
    -v $DIR/data:/data \
    -d tenforce/virtuoso
