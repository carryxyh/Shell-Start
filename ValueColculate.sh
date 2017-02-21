#!/bin/bash
echo "enter two numbers \n"
read -p "first number : " firstnum
read -p "second number : " secondnum

#这里total=之间不能放空格  会被认为是命令
total=$(($firstnum * $secondnum))
echo "\n the result -> $total"