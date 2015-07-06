
class Animal

  # WRITER METHOD
  def noise=(the_noise)
    @noise = the_noise
  end

  # READER METHOD
  def noise
    @noise
  end

end

cow = Animal.new

# SET NOISE
cow.noise= ("Moo!")

# GET NOISE
puts cow.noise


dog = Animal.new

# SET NOISE
dog.noise= ("Woof!")

# GET NOISE
puts dog.noise
