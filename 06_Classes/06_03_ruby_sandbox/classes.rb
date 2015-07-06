
class Animal

  # Set the noise attribute & hold it int the @noise instance variable
  def set_noise(the_noise)
    @noise = the_noise
  end

  # Return the noise from @noise
  def make_noise
    @noise
  end


end


line_break = "------------------------------"
puts line_break

# Create a new instance of the Animal class
cow = Animal.new
# Console Log - Tell me which object I'm looking at
puts 'cow'
# Console Log - Return the object Identifier
puts cow
# Set the noise for this instance
cow.set_noise('Moo!')
# Return the noise for this instance
puts cow.make_noise


puts line_break


chicken = Animal.new
puts "chicken"
puts chicken
chicken.set_noise("Cluck!")
puts chicken.make_noise


puts line_break


dog = Animal.new
puts "dog"
puts dog
dog.set_noise("Woof!")
puts dog.make_noise



puts line_break



