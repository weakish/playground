# cat.rb
class Cat
# @example
#   Cat.word #=> 'meow'
def self.word
'meow'
end

def initialize(can_hunt_dogs = false)
  @can_hunt_dogs = can_hunt_dogs
  end

# @example Usual cat cannot hunt dogs
#   cat = Cat.new
#   cat.can_hunt_dogs? #=> false
#
# @example Lion can hunt dogs
#   cat = Cat.new(true)
#   cat.can_hunt_dogs? #=> true
#
# @example Mutated cat can hunt dogs too
#   cat = Cat.new
#   cat.instance_variable_set(:@can_hunt_dogs, true) # not part of public API
#   cat.can_hunt_dogs? #=> true
  def can_hunt_dogs?
  @can_hunt_dogs
  end
  end
