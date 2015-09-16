def greet(name)
  puts "Hi, #{name}!"
end

greet("Rafa")
greet("Xavi")
greet("Isra")
greet("Fernando")

def square(number)
  return number * number
end

def multiply(a,b)
  return a * b
end

puts(square(22))
puts(square(1))
puts(square(10))

puts(multiply(3,2))
puts(multiply(10,3))

# Does 12 equal 1?
puts 12 == 1

# Is 3 less than 4?
puts 3 < 4

# Is 12 greater than or equal to 12?
puts 12 >= 12

# Combining conditions with AND
puts true && true
puts false && true

# Combining conditions with OR
puts true || false
puts false || false