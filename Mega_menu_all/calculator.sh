#!/bin/bash

### additon
### subtraction
### multiplication
### division

my_num(){
    read -p "Please enter first number: " num1
    read -p "Please enter second number: " num2
}

echo -e "\033[34m(1) Addition
\033[32m(2) Subtraction
\033[31m(3) Multiplication
\033[35m(4) Division\e[0m\n"

read selection
my_num

case "$selection" in
    1) ### Addition
    echo -e "\033[34m"
    expr $num1 + $num2
    echo -e "\e[0m"
    ;;
    2) ### Subtraction
    echo -e "\033[32m"
    expr $num1 - $num2
    echo -e "\e[0m"
    ;;
    3) ### Multiplication
    echo -e "\033[31m"
    expr $num1 \* $num2
    echo -e "\e[0m"
    ;;
    4) ### Division
    echo -e "\033[35m"
    expr $num1 / $num2
    echo -e "\e[0m"
    ;;
    *)
    echo "Failed to pick 1-4"
    ;;
esac
