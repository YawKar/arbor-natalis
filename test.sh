
random_func() {
  local arr=('$' '@')
  local length=${#arr[@]}
  echo $length
}

printf '%s\n' $(random_func)
