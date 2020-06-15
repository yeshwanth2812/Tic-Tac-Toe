#!/bin/bash -x
echo -e "\n Welcome to Tic-Tac-Toe game.\n"
echo -e "Player vs Computer\n"
row=3
column=3
numberOfShell=$(($row*$column))
function toss()
{
	echo -e "Toss.."
	checkToss=$((RANDOM%2))
	if (($checkToss == 1 ))
	then
	echo -e "\nPlayer Won the Toss\n"
	playerChance=1
	else
	echo -e "\nComputer Won the Toss\n"
	playerChance=0
	fi
}

function assignSymbol()
{
	assign=$((RANDOM%2))
	if (($assign==1))
	then
	playerSymbol='X'
	computerSymbol='O'
	else
	playerSymbol='O'
	computerSymbol='X'
	fi
	echo -e "\nPlayer 1 = $playerSymbol"
	echo -e "Computer = $computerSymbol"
}

function resetBoard()
{
	board=( 1 2 3 4 5 6 7 8 9 )
	echo -e "********* BOARD ************\n"
	for (( i=0,j=0;j<$row;i=$(($i+3)),j++ ))
	do
	echo -e "\t${board[i]} | ${board[i+1]} | ${board[i+2]}"
	if (($j!=$(($row-1))))
	then
	echo -e "\t---------"
	fi
	done
}
function updatedBoard()
{
	echo -e "\n********* BOARD ***********\n"
	for (( i=0,j=0;j<$row;i=$(($i+3)),j++ ))
	do
	echo -e "\t${board[i]} | ${board[i+1]} | ${board[i+2]}"
	if (($j!=$(($row-1))))
	then
	echo -e "\t---------"
	fi
	done
}
