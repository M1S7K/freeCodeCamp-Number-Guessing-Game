#! /bin/bash
#~~Number Guessing Game~~
echo -e "\n~~Welcome to Number Guessing Game~~\n"
#query DB
PSQL="psql --username=freecodecamp --dbname=number_guessing_game -AXqtc"
#generate random number
echo $RANDOM

#read username
echo "Enter your username:"
read USERNAME
#Usernames between 3 and 22 characters (Uppercase or lowercase letters with digits and the symbols: - and _ are allowed.)
if [[ "$USERNAME" =~ ^[[:alpha:][:digit:]_-]{3,22}$ ]]
then
  USERNAMES_IN_DB="$($PSQL "SELECT username FROM number_guessing_game_users WHERE username='$USERNAME';")"
  if ! [[ $USERNAME == $USERNAMES_IN_DB ]]
  then
    INSERT_NEW_USER="$($PSQL "INSERT INTO number_guessing_game_users(username) VALUES('$USERNAME');")"
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    GET_USER_DATA="$($PSQL "SELECT username, games_played, best_game FROM number_guessing_game_users WHERE username='$USERNAME';")"
    echo $GET_USER_DATA | while IFS="|" read STORED_USERNAME GAMES_PLAYED BEST_GAME;
    do
      echo -e "\nWelcome back, $STORED_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
    done
  fi
else
  echo "Sorry, this name is not allowed, try please another one"
fi
