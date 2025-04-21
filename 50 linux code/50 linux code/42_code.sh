# to remove similar type of files 
read -p "Enter Directory to sort:  " dir
read -p "Enter the format to delete : " format
ls $dir
echo \n "xxxxxxxxxx-----xxxxxxxxxx"\n
cd $dir 
rm *.$format 
cd ..
ls $dir
echo "files with format '$format' have been removed ^_^"
