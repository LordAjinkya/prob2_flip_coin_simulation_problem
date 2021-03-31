
#!/bin/bash -x
declare -A coin
	echo "${coin[@]}"

toss=$((RANDOM%2))

if [[ $toss -eq 0 ]]; then
	echo "Heads"
else
	echo "Tails"
fi


declare -A coin
	echo "${coin[@]}"


read -p "Enter 0 for Heads and 1 for Tails:" choice

i=0
while [[ $i -lt 50 ]]; do
	toss=$((RANDOM%2))
	if [[ $toss -eq 0 ]]; then
		coin['Heads']=$((coin['Heads'] + 1))
	else
		coin['Tails']=$((coin['Tails'] + 1))
	fi
	((i++))
done

echo "Keys:   ${!coin[@]}"
echo "Values: ${coin[@]}"

if [[ $((coin['Heads'])) -eq $((coin['Tails'])) ]]; then
	echo "It is a draw."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]; then
	echo "You Won."
else
	echo "You Lost"
fi

#!/bin/bash
declare -A coin
	echo "${coin[@]}"
echo "Player1 (Heads) and Player2 (Tails)."
read -p "Enter your call 0(Heads) and 1 (Tails):" choice

i=0
while [[ $((coin['Heads'])) -le 21 || $((coin['Tails'])) -le 21 ]]; do
	toss=$((RANDOM%2))
	if [[ $toss -eq 0 ]]; then
		coin['Heads']=$((coin['Heads'] + 1))
	else
		coin['Tails']=$((coin['Tails'] + 1))
	fi
	((i++))
done

echo "Keys:   ${!coin[@]}"
echo "Values: ${coin[@]}"

if [[ $((coin['Heads'])) -eq $((coin['Tails'])) ]]
then

	echo "It is a draw."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]
then

	echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) toss."
else

	echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) toss."
fi

#!/bin/bash
declare -A coin
	echo "${coin[@]}"
echo "Player1 (Heads) and Player2 (Tails)."
read -p "Enter your call 0(Heads) and 1 (Tails):" choice

i=0
while [[ $((coin['Heads'])) -lt 21 || $((coin['Tails'])) -lt 21 ]]
do
	toss=$((RANDOM%2))
	if [[ $toss -eq 0 ]]; then
		coin['Heads']=$((coin['Heads'] + 1))
	else
		coin['Tails']=$((coin['Tails'] + 1))
	fi
	((i++))
done

echo "Keys:   ${!coin[@]}"
echo "Values: ${coin[@]}"

if [[ $((coin['Heads'])) -eq $((coin['Tails'])) ]]
then
	echo "Its a Draw, lets toss some more times."
	i=0
	while [[ $(( $((coin['Heads']))-$((coin['Tails'])) )) -lt 2 && $(( $((coin['Tails']))-$((coin['Heads'])) )) -lt 2 ]];
	do
		toss=$((RANDOM%2))
		if [[ $toss -eq 0 ]]; then
			coin['Heads']=$((coin['Heads'] + 1))
		else
			coin['Tails']=$((coin['Tails'] + 1))
		fi
		((i++))
	done
	if [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]
	then
		echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
	elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]
	then
		echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
	elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 1 ]]
	then
		echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
	elif [[ $((coin['Tails'])) -gt $((coin['Heads'])) && $choice -eq 0 ]]
	then
		echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
	else
		echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
	fi


elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 0 ]]
then
	echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Heads'])) -gt $((coin['Tails'])) && $choice -eq 1 ]]
then
	echo "Player1 won by $(($((coin['Heads']))-$((coin['Tails'])))) tosses."
elif [[ $((coin['Tails'])) -gt $((coin['Heads'])) && $choice -eq 0 ]]
then
	echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
else
	echo "Player2 won by $(($((coin['Tails']))-$((coin['Heads'])))) tosses."
fi
