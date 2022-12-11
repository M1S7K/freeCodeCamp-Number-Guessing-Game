#! /bin/bash
#~~Project DB~~

#query DB
PSQL="psql --username=freecodecamp --dbname=number_guessing_game -t --no-align -c"

echo="$($PSQL "CREATE TABLE IF NOT EXISTS number_guessing_game_users(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) NOT NULL UNIQUE,
  games_played INT NOT NULL DEFAULT 0,
  best_game INT NOT NULL DEFAULT 0
);")"