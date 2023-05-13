# "We all go a little mad sometimes."
# "There'll be food and drink and ghosts...and perhaps even a few murders. You're all invited."
# "I'm scared to close my eyes; I'm scared to open them!"


print_help() {
  printf "Use: ./á̴͖̠͍̅͜ṟ̷͕̣͆̋̑b̵͈̩͍̈́o̷̡̞̬̓̔r̸̞̳͓̀-̴͓̰̤́̀̽͒n̵͓̐͗̀̈́͘a̷̭͕̠͊t̶͈͔͕̺̰̊̉å̵̘l̸̨̨̡͍͉̀͒̌͗͆i̵̞̰̦̓͌͝s̶̯̱̥̱̅̆̕ͅ.sh\n"
  printf "ARG - a non-negative height of an eternal horror\n"
}

number_regexp="^[0-9]+$"
if ! [[ $1 =~ $number_regexp ]]; then
  printf "error: '%s' is not a non-negative number\n" $1
  printf "\n"
  print_help
  exit 1
fi

# Now it's guaranteed that $1 is a non-negative number
height=$1
shift=5

# Call in quotes to escape wildcards: "$(random_toy)"
random_toy() {
  local toys=("@" "#" "%" "&" "*" "+" "-" ".")
  local toys_length=${#toys[@]}
  echo "${toys[$RANDOM % $toys_length]}"
}

# Call in quotes to escape wildcards: "$(random_snow)"
random_snow() {
  local snow=("." "-")
  local snow_length=${#snow[@]}
  echo "${snow[$RANDOM % $snow_length]}"
}

print_padding() {
  local padding=$1
  local i=1;
  for ((i=1; i<=padding; i++)); do
    if (( $RANDOM % 10 < 4 )); then
      printf "%c" "$(random_snow)"
    else
      printf " "
    fi
  done
}

print_row() {
  local row=$1
  local asterisks=$((2*$row - 1))
  local padding=$(($height - $row + $shift))
  print_padding $padding
  for ((j=1; j<=asterisks; ++j)); do
    if (( $RANDOM % 10 < 4 )); then
      printf "%c" "$(random_toy)"
    else
      printf "*"
    fi
  done
  print_padding $padding
  printf "\n"
}

for ((i=1; i<=height; i++)); do
  print_row $i
done

for ((i=1; i<=4; ++i)); do
  printf "%0.s·" $(seq 0 $((2*($height + $shift))))
  printf "\n"
done
