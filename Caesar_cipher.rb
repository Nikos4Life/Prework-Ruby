def solve_cipher(input)
  #First we built a sequence.
  alphabet = Array('a'..'z')
  #Set the shift
  shift = -1
  #Combines collection with key hash plus rotate the specified quantity
  cipher = Hash[alphabet.zip(alphabet.rotate(shift))]
  #Save to -> String // if the char cannot be found then it will return " "
  ciphered = input.chars.map { |c| cipher.fetch(c, " ") }
  #prints the word ciphered
  puts ciphered.join
end
solve_cipher("ifmmp")
# should return "hello"