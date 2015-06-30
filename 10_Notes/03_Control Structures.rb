# --------------------------
# --------------------------
# CONTROL STRUCTURES
# --------------------------
# --------------------------


# --------------------------
# CONDITIONALS
# --------------------------


name = "Jason"

if name == "Msh"
  puts "Hi Msh!"
elsif name == "Fi"
  puts "Hi Jason!"
else
  "Hi Someone"
end


puts "Hi Jason" if name == "Jason"
# One Line Conditional

=begin

if thisCondition
  result1
elsif thisCondition
  result2
else
  defaultResult
end

=end


# --------------------------
# CONDITIONALS - SHORTHAND
# --------------------------


# unless
# -----------------
# unless the condition is true, do something

name = "Jason"

unless name == "Jason"
  puts "Hello #{name}"
end

# This returns nil because name does == Jason

# Could also be written as so
=begin
if name != "Jason"
  puts "Hello #{name}"
end
=end


# case
# -----------------

case
  when name == "Jason"
    puts "Hi Jason"
  when name == "Msh"
    puts "Hi Msh"
  when name == "Fiona"
    puts "Hi Fiona"
  else
    puts "Hello, whoever you are!"
end



# ternary operator
# -----------------

name == "Jason" ? "Hello Jason" : "Hello #{name}"
# boolean ? result1 : result2


# --------------------------
# LOOPS
# --------------------------


x = 0

loop do
  # end condition
  break if x > 10
  # do something
  puts x
  # iterator
  x += 1
end

=begin
  loop do
    end condition
    do something
    increment
  end
=end

# break   = Terminate the whole loop
# next    = Jump to the next loop
# redo    = Redo this loop
# retry   = Start the whole loop over


x = 0

loop do
  # end loop if x == 10
  break if x == 10
  # Skip this iteration if x == 5
  next if x == 5
  # do something
  puts x
  # iterator
  x += 1
end


# WHILE LOOP
# ------------

x = 0

while x <= 10
  # do something
  puts x
  # iterator
  x += 1
end


# UNTIL LOOP
# ------------

x = 0

until x > 10
  # do something
  puts x
  # iterator
  x += 1
end



# --------------------------
# ITERATORS
# --------------------------


# UPTO ITERATION
# ----------------

1.upto(5) do |num|
  puts "Hello " + num.to_s
end
# Hello 1
# Hello 2
# Hello 3
# Hello 4
# Hello 5
# => 1


# EACH ITERATION
# ----------------

names = ["Jason", "Msh", "Fiona"]

names.each do |this_name|
  puts "Hello #{this_name}"
end


# FOR ITERATION
# ----------------

for this_name in names
  puts "Hello #{this_name}"
end



