
class Animal


  # -----------------------------
  # INSTANCE ATTRIBUTE ACCESSORS
  # -----------------------------

  attr_accessor :name
  attr_accessor :color
  attr_accessor :noise

  # -----------------------------
  # CLASS VARIABLES
  # -----------------------------

  @@species = ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
  @@current_animals = []

  # -----------------------------
  # CLASS METHODS
  # -----------------------------

  # Reader for @@species class variable
  def self.species
    @@species
  end
  # Writer for @@species class variable
  def self.species=(array=[])
    @@species = array
  end
  # Reader for @@current_animals class variable
  def self.current_animals
    @@current_animals
  end

  # -----------------------------
  # INSTANCE METHODS
  # -----------------------------

  # Create new with attributes method
  def self.create_with_attributes(noise, color)
    animal = self.new(noise)
    animal.color = color
    return animal
  end
  # Initialize Method
  def initialize(noise)
    @noise = noise
    # Append to @@current_animals
    @@current_animals << self
    puts '-----------------------------------'
    puts 'A new animal has been instantiated.'
    puts '-----------------------------------'
  end

  def get_color_info
    "The Animal's color is #{@color}"
  end


end


# Define a subclass 'Duck'
# Duck class inherits all methods in Animal

class Duck < Animal

  # This overwrites the get_color_info in the Animal class
  def get_color_info
    "The Duck's color is #{@color}"
  end

end


# Created using Animal Class
donald = Animal.create_with_attributes('Quack!', 'White')
puts donald
puts "#{donald.class} class"
# => Animal class
puts donald.get_color_info
# => The Animal's color is White


# Created using Duck Class
donald_duck = Duck.create_with_attributes('Quack!', 'White')
puts donald_duck
puts "#{donald_duck.class} class"
# => Animal class
puts donald_duck.get_color_info
# => The Duck's color is White
