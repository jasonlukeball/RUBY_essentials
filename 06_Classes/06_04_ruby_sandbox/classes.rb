
class Animal
  def set_noise(the_noise)
    @noise = the_noise
  end
  
  def make_noise
    @noise
  end
end

cow = Animal.new
cow.set_noise("Moo!")
puts cow.make_noise

dog = Animal.new
dog.set_noise("Woof!")
puts dog.make_noise
