
class FarmAnimal


  # ------------------
  # ATTRIBUTE METHODS
  # ------------------
  attr_accessor :noise
  attr_accessor :color

  # ------------------
  # CLASS METHODS
  # ------------------
  def self.all_species
    ['cat','cow','dog','duck','horse','pig',]
  end

  def self.create_with_attributes(noise, color)
    animal = FarmAnimal.new(noise,color)
    # Because we call .new it now runs the 'initialize' method
    return animal # This is not really needed
  end



  # ------------------
  # INSTANCE METHODS
  # ------------------
  def initialize(noise,color)
    @noise = noise
    @color = color

    puts '-----------------------------------'
    puts 'A new animal has been instantiated.'
    puts '-----------------------------------'
    puts @noise
    puts @color
  end


end


# Call the Class Method 'all_species'
puts FarmAnimal.all_species.inspect

# Create new instance using only the 'initialize' instance method
# duck = FarmAnimal.new('Quack!', 'Brown')

# Call the Class Method 'create_with_attributes'
# Because this calls .new it also runs the 'initialise' Method
FarmAnimal.create_with_attributes('Woof','Black')