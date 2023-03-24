#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPP WGOALS OGOALS
do
 if [[ $WINNER != 'winner' ]]
  then 
  CHECK_WINNER=$($PSQL "SELECT * FROM teams WHERE name='$WINNER'")
  if [[ -z $CHECK_WINNER ]]
  then
    INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
    echo $INSERT_WINNER w
  fi
 fi

if [[ $OPP != 'opponent' ]]
 then
 CHECK_OPP=$($PSQL "SELECT * FROM teams WHERE name='$OPP'")
 if [[ -z $CHECK_OPP ]]
 then INSERT_OPP=$($PSQL "INSERT INTO teams(name) VALUES ('$OPP')")
   echo $INSERT_OPP o
 fi
fi

if [[ $YEAR != 'year' ]]
 then
  GET_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  GET_OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
  INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $GET_WINNER_ID, $GET_OPP_ID, $WGOALS, $OGOALS)")
  echo $INSERT_GAME g
fi
done


