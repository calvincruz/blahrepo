#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

randomNumber=$((RANDOM % 1000 + 1))

echo -e "\nEnter your username:"

read username

while [[ -z $username || ! $username =~ ^[a-zA-Z0-9_]{0,22}$ ]]
do
read username
done

existingUser=$($PSQL "SELECT * FROM users WHERE username='$username'")

if [[ -z $existingUser ]]
then
echo -e "\nWelcome, $username! It looks like this is your first time here."
insertUserResult=$($PSQL "INSERT INTO users (username) VALUES ('$username')")
userID=$($PSQL "SELECT user_id FROM users WHERE username='$username'")
insertNumGamesResult=$($PSQL "INSERT INTO playerstats (user_id, numberofgames, highscore) VALUES ($userID, 0, 10000)")

else
userID=$($PSQL "SELECT user_id FROM users WHERE username='$username'")
games_played=$($PSQL "SELECT numberofgames FROM playerstats WHERE user_id=$userID")
best_game=$($PSQL "SELECT highscore FROM playerstats WHERE user_id=$userID")

echo -e "\nWelcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read Guess
currentScore=1

while [[ $Guess != $randomNumber ]]
do


if [[ ! $Guess =~ ^-?[0-9]+$ ]]
then
echo -e "\nThat is not an integer, guess again:"
read Guess
((currentScore++))
elif [[ $Guess -gt $randomNumber ]]
then
echo -e "\nIt's lower than that, guess again:"
read Guess
((currentScore++))
else
echo -e "\nIt's higher than that, guess again:"
read Guess
((currentScore++))
fi
done


games_played=$($PSQL "SELECT numberofgames FROM playerstats WHERE user_id=$userID")
((games_played++))

best_game=$($PSQL "SELECT highscore FROM playerstats WHERE user_id=$userID")


if [[ $currentScore -lt $best_game ]]
then
updateHighScore=$($PSQL "UPDATE playerstats SET highscore=$currentScore WHERE user_id=$userID")
fi

updateNumberOfGames=$($PSQL "UPDATE playerstats SET numberofgames=$games_played WHERE user_id=$userID")
echo -e "\nYou guessed it in $currentScore tries. The secret number was $randomNumber. Nice job!"