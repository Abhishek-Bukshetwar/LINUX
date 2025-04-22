#!/bin/bash
echo "Enter two numbers:"
read a b
echo "Choose operation (+ - * /):"
read op
echo "Result:"
echo "scale=2; $a $op $b" | bc

