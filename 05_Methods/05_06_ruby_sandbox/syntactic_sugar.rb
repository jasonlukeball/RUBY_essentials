
puts 8 + 2
# => 10
puts 8.+(2)
# => 10

puts 8 - 2
# => 6
puts 8.-(2)
# => 6


puts 8 * 2
# => 16
puts 8.*(2)
# => 16


puts 8 / 2
# => 4
puts 8./(2)
# => 4

puts 8 ** 2
# => 64
puts 8.**(2)
# => 64


array1 = [1,2,3]
puts array1.inspect

array2 = [1,2,3]
puts array2.inspect

array1 << 4
puts array1.inspect

array2.<<(4)
puts array2.inspect

array1[2]
puts array1.inspect

array2.[](2)
puts array2.inspect

array1[2] = 'x'
puts array1.inspect

array2.[]=(2, 'x')
puts array2.inspect
