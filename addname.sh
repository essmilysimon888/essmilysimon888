echo "No of Args $#"
FILE=$1
un=$2
if [ $# -eq 2 ]
then
echo "no of args entered correctly "
else
echo "Pls check the num of ars"
fi
if [ -f "$FILE" ];
then
echo " File : $FILE exist "
else
echo " File : $FILE does not exist "
fi
if grep -xq $un "$FILE"
then
echo "$un already exist"
else
echo "not present"
echo $un >> $FILE
fi
