def foo(x, y) {
    return x + y
}

def main() {
    for i in range(10) {
        print "%s, %s" % (i * 2,
            i * 3)
    }
}

if __name__ == '__main__' {
    main()
}

def is_member(x, ls):
for y in ls:
if x == y:
return True
continue
return False     # incorrect indentation

## This is not a good example.
## In fact, we would write this instead:

def is_a_member(x, ls):
    return x in ls
