#! /bin/bash
#~~Number Guessing Game~~
echo -e "\n~~Welcome to Number Guessing Game~~\n"
#query DB
PSQL="psql --username=freecodecamp --dbname=number_guessing_game -t --no-align -c"
#generate random number
echo $RANDOM

#read username
echo "Enter your username:"
read USERNAME

#Usernames between 3 and 22 characters (Uppercase or lowercase letters with digits and the symbols: - and _ are allowed.)
if [[ "$USERNAME" =~ ^[[:alpha:][:digit:]_-]{3,22}$ ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Sorry, this name is not allowed, try please another one"
fi