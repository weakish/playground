switch $argv[1]
  case cat
    echo mew
  case (touch /tmp/dog)
    echo woo
  case '*'
    echo hi
end
