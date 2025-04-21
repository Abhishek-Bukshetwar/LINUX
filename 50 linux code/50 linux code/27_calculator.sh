#!/bin/bash

add() {
    return $(($1 + $2))
}

subtract() {
    return $(($1 - $2))
}

multiply() {
    return $(($1 * $2))
}

divide() {
    if [ "$2" -eq 0 ]; then
        echo "Error code for division by zero"
        return 0
    else
        return $(( $1 / $2 ))
    fi
}

# Asking user for operation
echo "Choose an operation (+, -, *, /):"
read operator

# Asking user for numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Using case statement to call the respective function and store result
case $operator in
    "+")
        add $num1 $num2
        result=$?
        echo "The addition of $num1 and $num2 = $result"
        ;;
    "-")
        subtract $num1 $num2
        result=$?
        echo "The Subtraction of $num1 and $num2 = $result"
        ;;
    "*")
        multiply $num1 $num2
        result=$?
        echo "The Multiplication of $num1 and $num2 = $result"
        ;;
    "/")
        divide $num1 $num2
        status=$?
        if [ $status -eq 0 ]; then
            echo "Result: Division by zero is not allowed "
        else
            echo "The Division of $num1 and $num2 = $status"
            exit 1
        fi
        ;;
    *)
        echo "Invalid operator!"
        exit 1
        ;;
esac
