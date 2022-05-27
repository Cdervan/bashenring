#!/bin/bash

# bashenring #

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in 
        1) 
                type="Samurai"
                hp=10
                attack=20
                ;;
        2)
                type="Prisoner"
                hp=20
                attack=4
                ;;
        3)      type="Prophet"
                hp=30
                attack=4
                ;;
esac

echo "You've chosen the $type class. Your HP is $hp and your attack is $attack."

echo "a beast approaches you"
sleep 1
echo "select attack (0/1)"
read tarnished
monsterAttack=$(($RANDOM % 2))

echo "Monster attack was $monsterAttack"
sleep 1
if [[ $tarnished == "$monsterAttack" ]]; then
        echo "You are victorious!"
elif [[ $hp -gt 29 ]]; then
        hp=$(($hp-20))
        echo "youre hp is now $hp"
        echo "you ran the fuck out of there"
else
        echo "you died"
        exit 1
fi

sleep 2

echo "Big boss Margit approaches you"
sleep 1
echo "choose your attack 0-9 (0/9)"
read tarnished
sleep 1
Margit=$(( $RANDOM % 10 ))

echo "Margit's attack was $Margit"
sleep 1
if [[ $tarnished == "$Margit" ]]; then
        echo "you have defeated Margit"
else
        echo "you died"
        exit 1
fi

sleep 2

echo "Honestly you did enough. Good job. You beat the game."
exit 1
