#!/bin/bash

display_menu() {
  echo "Menu:"
  echo "1. Your name"
  echo "2. Random number"
  echo "3. Exit"
}

display_name() {
  read -p "Enter your full name: " name
  echo "Using cowsay:"
  cowsay "$name"
  echo "Using figlet:"
  figlet "$name"
}

display_random_number() {
  echo "Random number between 1 and 1000: $((RANDOM % 1000 + 1))"
}

while true; do
  display_menu

  read -p "Enter your choice (1/2/3): " choice

  case $choice in
    1)
      display_name
      ;;
    2)
      display_random_number
      ;;
    3)
      echo "Exiting the script. Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please enter 1, 2, or 3."
      ;;
  esac

  read -p "Press Enter to continue..."
  clear  # Clear the screen for the next iteration
done
