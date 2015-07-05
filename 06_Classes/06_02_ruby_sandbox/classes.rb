

class Animal

  def make_noise
    return "Moo!"
  end

end

line_break = "------------------------------"

puts line_break

# Create an instance of the Animal class and assign it to a variable
animal = Animal.new
# Console log
puts "animal"
# Output object reference
puts animal
# Call make_noise on this object
puts animal.make_noise


puts line_break


cow = Animal.new
puts "cow"
puts cow
puts cow.make_noise


puts line_break


chicken = Animal.new
puts "chicken"
puts chicken
puts chicken.make_noise


puts line_break


dog = Animal.new
puts "dog"
puts dog
puts dog.make_noise


puts line_break



