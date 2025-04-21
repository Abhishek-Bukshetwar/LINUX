read -p "Enter file name :" filename 
read -p "Enter text to append " text
echo "$text" >> "$filename"
cat $filename
echo "Text appended to '$filename'."
