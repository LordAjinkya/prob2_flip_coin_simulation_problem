
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
	echo "You Lost."
fi
