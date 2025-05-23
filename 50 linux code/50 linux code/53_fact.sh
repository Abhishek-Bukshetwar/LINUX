
factorial() {
  local num=$1
  local result=1

  for ((i=1; i<=num; i++)); do
    result=$((result * i))
  done

  echo $result
}

read -p "Enter a number: " num

if [[ $num =~ ^[0-9]+$ ]]; then
  result=$(factorial $num)
  echo "The factorial of $num is $result"
else
  echo "Please enter a valid positive integer."
fi

