FIRST=`cat $1 | wc -l`
SECOND=`cat $2 | wc -l`
BOTH=`(cat $1 ; cat $2 ) | wc -l`
UNIQUE=`(cat $1 ; cat $2 ) | sort -u | wc -l`
OVERLAP=`expr $BOTH - $UNIQUE`
echo "first:   $FIRST"
echo "second:  $SECOND"
echo "overlap: $OVERLAP"
