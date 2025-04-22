#sorting 50 according to extension
read -p "Enter Directory to sort  " dir
read -p "Enter file to store Output  " text
mkdir -p $dir 
ls $dir
touch $text.txt
ls $dir | sort -t. -k2,2 > $text.txt
echo "Files Sorted according to format"
cat $text.txt
