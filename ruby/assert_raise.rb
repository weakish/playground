# Was written for yard-doctest
# https://github.com/p0deje/yard-doctest/pull/2
# Now yard-doctest has a somehow limited but much clearer implementation.
def assert_raise(*exp)
  begin
    yield
    'Nothing raised!'
  rescue Exception => e
    expected = exp.any? { |ex| e.is_a? ex }
    if expected
      true
    else
      "Got #{e.inspect} raised!"
    end
  end
end
