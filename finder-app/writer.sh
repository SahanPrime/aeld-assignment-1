writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
	echo "Error !! need two arguements"
	exit 1
fi

writedir=$(dirname "$writefile")

mkdir -p "$writedir"

echo "$writestr">"$writefile"

if [ $? -ne 0 ]
then
	echo "Error!! could not create file $writefile"
	exit 1
fi


