

class Animal

  def set_noise(the_noise)
    return @noise = the_noise
  end


  def make_noise
    return @noise
  end

end

line_break = "------------------------------"
puts line_break


cow = Animal.new
puts "cow"
puts cow
cow.set_noise("Moo!")
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



