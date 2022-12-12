#! /bin/bash
#~~Project DB~~

#query DB
PSQL="psql --username=freecodecamp --dbname=number_guessing_game_db -t --no-align -c"

echo "$($PSQL "DROP TABLE IF EXISTS users CASCADE;")"
echo "$($PSQL "DROP TABLE IF EXISTS games CASCADE;")"

echo "$($PSQL "CREATE TABLE IF NOT EXISTS users(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) NOT NULL UNIQUE,
  date_created TEXT DEFAULT Now()::date
);")"

echo "$($PSQL "CREATE TABLE IF NOT EXISTS games(
  game_id SERIAL PRIMARY KEY,
  user_id INT,
  result INT NOT NULL DEFAULT 0,
  CONSTRAINT fk_user_id FOREIGN KEY(user_id) REFERENCES users(user_id)
);")"
