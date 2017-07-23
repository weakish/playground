## disable color

```ruby
red = "\e[31m"
reset_color = "\e[0m"

  if $stdout.tty? && line.size > maximum_line_length
    # Turn the output to red starting at the first character.
    output_line.insert(0, red)
    # Reset the text color back to what it was at the end of the
    # line.
    output_line.insert(-1, reset_color)
  end

  $stdout.puts output_line
```

TODO some programs understand colors.

## ARGF

```ruby
input = ARGF.read
```

If something is passed in on `ARGV` then `ARGF` will assume that it's filenames and call `IO#read` on them sequentially. If `ARGV` is empty then it reads from `$stdin` to get data passed in via pipe.

## tail

```ruby
# Keep reading lines of input as long as they're coming.
ARGF.each_line do |line|
  # Construct a string that begins with the length of this line
  # and ends with the content. The trailing newline is #chop'ped
  # off of the content so we can control where the newline occurs.
  # The string are joined with a tab character so that indentation
  # is preserved.
  output_line = [line.size, line.chop].join("\t")
```

## head

```ruby
begin
  $stdout.puts output_line
rescue Errno::EPIPE
  exit(74)
end
```

Note that you only need to consider the `head` and `tail` issue when
you are reading and writting in lines. If you read and write the whole
file at once, there is nothing to worry about.
