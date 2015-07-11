
# Before we can include ContactInfo, Ruby needs to know about ContactInfo

# Require loads the file only once
require '/Users/jason_ball/Dropbox/Dev/RUBY/RUBY_essentials/exercise_files/07_Modules/07_03_ruby_sandbox/person_contact_info_module.rb'


class Person
  include ContactInfo
end


class Teacher
  include ContactInfo
  attr_accessor :lesson_plans
end


class Student < Person
  attr_accessor :books, :grades
end


jason = Person.new
jason.first_name = "Jason"
jason.last_name = "Ball"
puts jason.full_name