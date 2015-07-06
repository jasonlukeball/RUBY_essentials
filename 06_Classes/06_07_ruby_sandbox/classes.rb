
class Animal


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

  # ------------------
  # INSTANCE METHODS
  # ------------------
  def initialize(noise)
    @noise = noise
    puts '-----------------------------------'
    puts 'A new animal has been instantiated.'
    puts '-----------------------------------'
  end


end



duck = Animal.new('Quack!')
puts duck.noise
