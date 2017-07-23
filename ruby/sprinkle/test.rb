package :test do
  # requires :install_test
  runner 'echo test'
  verify do has_executable 'test' end
end

# package :install_test do
#   l = -> { `echo heavy operation still runs > test-file` }
#   l.call
#   runner 'echo not run >> test-file'
# end


policy :desktop, :roles => :laptop do
  requires :test
end

deployment do
  delivery :local
end

