#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ ! $1 ]]
then
echo "Please provide an element as an argument."
exit
fi

atomic_number=$($PSQL "SELECT atomic_number FROM elements WHERE name = '$1' OR symbol = '$1';")

if [[ -z $atomic_number ]]
then
#check by atomic number instead
atomic_number=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number::text = '$1';")
fi

#if [[ -z $getResults ]]
#then
#getResults=$($PSQL "SELECT name FROM elements WHERE atomic_number=$1")
#fi

if [[ -z $atomic_number ]]
then
echo -e "I could not find that element in the database."
exit
fi

NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$atomic_number")
SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$atomic_number")
TYPE_ID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number=$atomic_number")
TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID")
MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$atomic_number")
MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$atomic_number")
BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$atomic_number")

echo "The element with atomic number $atomic_number is "$NAME" ("$SYMBOL"). It's a "$TYPE", with a mass of $MASS amu. "$NAME" has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."


