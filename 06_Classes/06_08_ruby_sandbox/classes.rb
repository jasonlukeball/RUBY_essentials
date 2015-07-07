class FarmAnimal2


  # ------------------
  # ATTRIBUTE METHODS
  # ------------------
  attr_accessor :noise
  attr_accessor :color

  # ------------------
  # CLASS VARIABLE
  # ------------------
  @@all_species = ['cat','cow','dog','duck','horse','pig',]
  # Track total animals created
  @@total_animals = 0
  # Track the FarmAnimal2 instances that have been created
  @@current_animals = []

  # ------------------
  # CLASS METHODS
  # ------------------

  def self.all_species
    @@all_species
  end

  def self.create_with_attributes(noise, color)
    animal = FarmAnimal2.new(noise,color)
    # Because we call .new it now runs the 'initialize' method
    return animal # This is not really needed
  end

  # Reader method for current_animals
  def self.current_animals
    @@current_animals
  end



  # ------------------
  # INSTANCE METHODS
  # ------------------
  def initialize(noise,color)
    @noise = noise
    @color = color
    # New animal created, increase the @@total_animals class variable
    @@total_animals += 1
    # New animal created, append it to the @@current_animals class variable
    @@current_animals << self


    puts '-----------------------------------'
    puts 'A new animal has been instantiated.'
    puts '-----------------------------------'
    puts @noise
    puts @color
    puts @@total_animals
  end


end


# Call the 'all species method' (which gets it value from the class variable '@@species')
puts FarmAnimal2.all_species.inspect

# Call the Class Method 'create_with_attributes'
# Because this calls .new it also runs the 'initialise' Method
FarmAnimal2.create_with_attributes('Woof','Black')

# Create another FarmAnimal2 instance
# Notice the @@total_animals will be '2'
FarmAnimal2.create_with_attributes('Baah','White')

puts "\n"
puts '------------------------------------'
puts 'Current Animals (@@current_animals)'
puts '------------------------------------'
puts FarmAnimal2.current_animals.inspect
puts "\n"
