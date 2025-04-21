#!/bin/bash
echo "Enter two numbers:"
read a b
echo "Choose operation (+ - * /):"
read op
echo "Result:"
echo "$a $op $b" | bc
