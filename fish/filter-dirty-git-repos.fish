for r in *
    cd $r
    if test (git status --porcelain | wc -l) -eq 0
        echo -n .
    else
        echo -n "$r "
    end
    cd ..
end