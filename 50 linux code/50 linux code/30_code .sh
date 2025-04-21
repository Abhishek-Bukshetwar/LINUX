# to list the file names in directory 
read -p "Enter Directory " dir
read -p "Enter file to store names  " text
touch $text.txt 
ls $dir > $text.txt
cat $text.txt
echo "files listed successfully "
