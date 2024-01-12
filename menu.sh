!/bin/bash

echo "Select one option from the  menu please: "

menu=("Your name" "Random number" "Quit")

select opt in "${menu[@]}"
do
    case $opt in
        "Your name")
            echo "your name" | cowsay;;
        "Random number")
           echo "echo $((1 + $RANDOM % 1000))";;
        "Quit")
           echo "Good bye"
           break;;
        *)
           echo "Ooops, wrong option $REPLY";;
    esac
done
