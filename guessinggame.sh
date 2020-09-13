#!/usr/bin/env bash

function guessinggame(){
    correct_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "What is your guess for the total number of files?"
        read  number
        if [ $number -lt $correct_ans ]
        then
            echo "Your guess is lesser than the actual number"
        elif [ $number -gt $correct_ans ]
        then
            echo "Your guess is greater than the actual number"
        else
            echo "Congratulations! You guessed that right!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directoy!"
guessinggame
