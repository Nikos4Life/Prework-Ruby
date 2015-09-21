class Caesar_cipher
  #First we built a sequence.
  @@alphabet = Array('a'..'z')
  #Fixed shift to default (class variable)
  @@shift = 3
  def solve_cipher(input)
	  #Combines collection with key hash plus rotate the specified quantity
	  cipher = Hash[@@alphabet.zip(@@alphabet.rotate(@@shift))]
	  #Save to -> String // if the char cannot be found then it will return " "
	  ciphered = input.chars.map { |c| cipher.fetch(c, " ") }
	  #prints the word ciphered
	  puts ciphered.join
  end
end	
 cipher1 = Caesar_cipher.new()
 puts "Enter the message to be encrypted:"
 cipher1.solve_cipher(gets.chomp)