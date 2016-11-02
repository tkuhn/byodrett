echo "With overlap:"
(cat $1 ; cat $2 ) | wc -l
echo "Without overlap:"
(cat $1 ; cat $2 ) | sort -u | wc -l
