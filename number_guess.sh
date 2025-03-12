#!/bin/bash
#number guessing 
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"


echo "Enter your username:"
read USERNAME


SECRET_NUMBER=$(( (RANDOM % 1000) + 1 ))


RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $RETURNING_USER ]]
then
  
  INSERTED_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users ON games.user_id = users.user_id WHERE users.username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users ON games.user_id = users.user_id WHERE users.username = '$USERNAME'")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


echo -e "\nGuess the secret number between 1 and 1000:"
COUNT=0

while true
do
  read NUMBER

  
  if ! [[ "$NUMBER" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    (( COUNT++ ))
    if [[ $NUMBER -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $NUMBER -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"

      
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

      
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $COUNT)")

      
      BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id = $USER_ID")
      $($PSQL "UPDATE users SET best_game = $BEST_GAME, games_played = games_played + 1 WHERE user_id = $USER_ID")

      break
    fi
  fi
done
