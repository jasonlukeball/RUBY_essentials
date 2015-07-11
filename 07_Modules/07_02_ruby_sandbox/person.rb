
# This module contains code that is common to many classes: Person, Teacher & Student
# Rather than writing it out each time within each class, we can create the code once, and then include it into each class
# This is a good practice, because if we need to change the ContactInfo code, we do it in one place, not many

module ContactInfo

  attr_accessor :first_name, :last_name, :city, :state, :zip_code

  def full_name
    return @first_name + " " + @last_name
  end

  def city_state_zip
    csz = @city
    csz += ", #{@state}" if @state
    csz += " #{@zip_code}" if @zip_code
    return csz
  end

end


class Person
  # Include the ContactInfo Module, it's object accessors and it's methods
  include ContactInfo
end


class Teacher
  # Include the ContactInfo Module, it's object accessors and it's methods
  include ContactInfo
end


class Student
  # Include the ContactInfo Module, it's object accessors and it's methods
  include ContactInfo
end


jason = Person.new
jason.first_name = "Jason"
jason.last_name = "Ball"
puts jason.full_name

mr_smith = Teacher.new
mr_smith.first_name = "Rob"
mr_smith.last_name = "Smith"
puts mr_smith.full_name