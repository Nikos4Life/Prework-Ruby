puts "What is the source file?"
source_file = gets.chomp
puts "Type the file's name to copy to:"
dest_file = gets.chomp
source_file_contains = IO.read(source_file)
IO.write(dest_file, source_file_contains)
