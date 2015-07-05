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
#
# -----------------------------