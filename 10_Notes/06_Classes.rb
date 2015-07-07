# --------------------------
# --------------------------
# CLASSES
# --------------------------
# --------------------------

# Classes define Objects
  # What an Object is
  # What it can do

class SomeName
  # ...
end

# Classes are named using upper Camelcase


# -----------------------------
# DEFINING AND USING CLASSES
# -----------------------------

class Animal

  # make_noise method
  def make_noise
    return "Moo!"
  end

end

# Create a new object from the class
Animal.new
# New Animal Object
# => #<Animal:0x007f8cec1732e0>

Animal.new
# Another new Animal object
# => #<Animal:0x007f8cec171440>

cow = Animal.new
# Cow is an instance on the Animal Object
# Another new Animal object
# => #<Animal:0x007f8cec16a500>

cow.make_noise
# Call the make_noise method on the cow object
# => "Moo!"

cow.make_noise.upcase
# => "MOO!"


# We created an object, assigned it to a variable and
# Then called the make_noise method on that object


# Objects 'carry around' their classes code


# -----------------------------
# INSTANCES
# -----------------------------

# An instance is an occurrence of a class
# An object that has been created from a class

# Animal.new created an instance of the Animal Class



# -----------------------------
# ATTRIBUTES
# -----------------------------

# Attributes are values that persist inside of an object/instance of a class

# Class is like a table definition (but more than that)
# Instance is like a record
# Attributes are like fields

# Instance variables ( @variable ) are used to store attributes of objects


class Animal2

  # Set the noise attribute & hold it int the @noise instance variable
  def set_noise(the_noise)
    @noise = the_noise
  end

  # Return the noise from @noise
  def make_noise
    @noise
  end


end


# Create a new instance of the Animal class
cow = Animal2.new

# Set the noise for this instance
cow.set_noise('Moo!')

# Return the noise for this instance
puts cow.make_noise




# -----------------------------
# READER / WRITER METHODS
# -----------------------------

# Also referred to as GETTER/SETTER methods
# Used to Get a value, and set a value



class Animal3

  # WRITER / SETTER METHOD
  # Set the noise attribute & hold it int the @noise instance variable
  def set_noise(the_noise)
    @noise = the_noise
  end

  # READER / GETTER METHOD
  # Return the noise from @noise
  def get_noise
    @noise
  end


end


# Create a new instance of the Animal class
cow = Animal3.new

# Set the noise for this instance
cow.set_noise('Moo!')

# Return the noise for this instance
puts cow.get_noise



# -----------------------------
# ATTRIBUTE METHODS
# -----------------------------


# Commonly referred to as attr_* methods

# These are a shorthand way of writing the reader/writer methods above


# attr_reader
# Creates a reader method


# attr_writer
# Creates a writer method


# attr_accessor
# Creates both a reader and writer method


# Example: The shorthand automatically created this for us

=begin

  # -------------
  # READER METHOD
  # -------------

  # Shorthand

  attr_reader :name

  # Long way

  def name
    # Return name
    @name
  end

  # -------------
  # WRITER METHOD
  # -------------

  # Shorthand

  attr_writer :name

  # Long way

  def name=(value)
    @name = value
  end


  # -------------
  # ACCESSOR
  # -------------

  # Automatically creates a reader and writer for us

  # Shorthand

  attr_accessor :name

  # Long way

  def name
    # Return name
    @name
  end

  def name=(value)
    @name = value
  end


=end


class Person


  # Both Reader and Writer Methods
  attr_accessor :name


  # Reader Method
  attr_reader :age

  # Writer Method
  attr_writer :age


  # Reader (multiple attributes)
  attr_reader :gender, :dob

  # Writer (multiple attributes)
  attr_writer :gender, :dob


end


# Create new Person Instance
jason = Person.new


# SET ATTRIBUTES
jason.name = 'Jason'
jason.age = 33
jason.gender = 'Male'
jason.dob = '21/11/1981'


# GET ATTRIBUTES
puts jason.name
puts jason.age
puts jason.gender
puts jason.dob



# -----------------------------
# INITIALIZE METHODS
# -----------------------------

# When we want to create an instance of a class, very often you want to do some initial setup of that object
# Setting some default values, or calling some default values, that will happen right at the beginning

# When Class.new is called, the initialize method is called Automatically

def initialize
  # Do some setup stuff
end


class Job
  # Setup reader/writer methods for 'uid' attribute
  attr_accessor :uid

  # Set defaults on instance creation
  def initialize
    @uid = 101
  end

end

# Create a new record instance
job1 = Job.new

# Get the uid for job1
puts "Job 1: #{job1.uid}"

job2 = Job.new
puts "Job 2: #{job2.uid}"



# -----------------------------
# CLASS METHODS
# -----------------------------

# Class Methods are methods which are called on the class
# Class methods are named self.method_name
# Person.new ( .new is a class method )
# Convention is to put class methods above the instance methods

def self.method_name
  # ...
end


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


# -----------------------------
# CLASS ATTRIBUTES
# -----------------------------

# Class attributes are used to store values that apple to the class generally
# Class attributes are stored in class variables ( @@variable )


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


# -----------------------------
# CLASS READER/WRITER METHODS
# -----------------------------

# Class reader/writer methods allow us to get access to class attributes from outside the class

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


# -----------------------------
# INHERITANCE
# -----------------------------





# -----------------------------
# SUBCLASS OVERRIDING
# -----------------------------

# -----------------------------
# ACCESSING THE SUPERCLASS
# -----------------------------