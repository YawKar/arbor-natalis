print_help() {
  printf "Use: ./drzewko_świąteczne.sh ARG\n"
  printf "ARG - a non-negative height of a drzewko świąteczne\n"
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

for ((i=1; i<=height; i++));
do
  asterisks=$((2*i - 1))
  spaces_prefix=$((height - i))
  printf '%0.s ' $(seq 0 $spaces_prefix)
  for ((j=1; j<=asterisks; j++)); do
    printf '*'
  done
  printf '\n'
done
