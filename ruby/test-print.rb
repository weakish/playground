open('ruby.md') do |f|
  f.each do |line|
    begin
      $stdout.puts line
    rescue Errno::EPIPE
      exit(74)
    end
  end
end

