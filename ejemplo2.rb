file_contents = IO.read("ejemplo1.rb")
puts "The source file contains: \n#{file_contents}"

puts "What's your name?"
lee = IO.read("ejemplo1.rb")
IO.write('name.txt', lee)