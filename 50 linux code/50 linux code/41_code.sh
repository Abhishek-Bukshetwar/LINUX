#creating 50 files 10 with same format for 5 format 
read -p "Enter Directory to sort  " dir
read -p "Enter file to store Output  " text
mkdir -p $dir 
ls $dir
touch $text.txt
ls $dir | sort -t. -k2,2 > $text.txt
echo "Files Sorted according to format"
cat $text.txt
