#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter your guess number"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess number is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess number is Greater then the true number"
        else
            echo "you are correct!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess