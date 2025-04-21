#creating 50 files 10 with same format for 5 format 
read -p "Enter Directory " dir
mkdir $dir 
cd $dir
for i in {1..10} ;do 
	touch file_$i.txt
	touch file_$i.sh
	touch file_$i.word
	touch file_$i.pdf
	touch file_$i.bash
done
echo "50 Files created "
