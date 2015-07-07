
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
  

end




duck = Animal.create_with_attributes('Quack!', 'white')
puts duck.inspect

