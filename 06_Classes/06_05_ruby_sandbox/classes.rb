class Person


  # Both Reader and Writer
  attr_accessor :name


  # Reader
  attr_reader :age

  # Writer
  attr_writer :age


  # Reader (multiple attributes)
  attr_reader :gender, :dob

  # Writer (multiple attributes)
  attr_writer :gender, :dob


end

# Create new Person Instance
jason = Person.new


# SET
jason.name = "Jason"
jason.age = 33
jason.gender = "Male"
jason.dob = "21/11/1981"


# GET
puts jason.name
puts jason.age
puts jason.gender
puts jason.dob
