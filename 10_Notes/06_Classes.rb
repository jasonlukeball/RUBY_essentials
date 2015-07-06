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
#
# -----------------------------




# -----------------------------
#
# -----------------------------