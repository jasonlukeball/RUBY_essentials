class FarmAnimal3

  # ------------------
  # CLASS VARIABLE
  # ------------------
  @@all_species = ['cat','cow','dog','duck','horse','pig',]

  # ------------------
  # CLASS METHODS
  # ------------------

  # Reader method for @@all_species class variable
  def self.all_species
    @@all_species
  end

  # Writer method for @@all_species class variable
  def self.all_species=(array=[])
    @@all_species = array
  end

end


# Output the @@all_species class variable
puts FarmAnimal3.all_species.inspect

# Set the @@all_species class variable
FarmAnimal3.all_species = ['jason','msh']

# Output the @@all_species class variable (again)
puts FarmAnimal3.all_species.inspect