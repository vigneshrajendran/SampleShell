for i in `cat input.csv`
do
echo $i | sed 's/,/;/g' | awk-F ';' '{ print $1 ";"}' | tr -s '\n' ';' > output.txt
done