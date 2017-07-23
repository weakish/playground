# lexical

function i
  set i_v 1
  echo i_v
end

function o
  set i_v 2
  i
  echo $i_v
end

# closure

function o
  set  ov 1
  function i
    echo $ov # empty
  end
  i
end

function o
  set -l ov 1
  function i
    echo $ov # empty
  end
  i
end

function o
  set -x ov 1
  function i
    echo $ov # empty
  end
  i
end

set gv 1

function o
  set -x ov 1
  function i
    echo $ov # empty
    echo $gv
  end
  i
end

function foo
  echo $bar_v
end

function bar
  set bar_v 1
  foo # empty
end
