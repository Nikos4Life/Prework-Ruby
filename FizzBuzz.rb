# Exercise: FizzBuzz
# author: Miguel Maroto

# Generate a progressive list of numbers from 1 to 100, check the module and in consequence will print fizz, buzz or fizzbuz.
(1..100).each do |fizzbuzz|
	#
    iron_fizz=(fizzbuzz%3==0)
    iron_buzz=(fizzbuzz%5==0)
    case
        when iron_fizz&&iron_buzz
            puts 'fizzbuzz'
        when iron_fizz
            puts 'fizz'
        when iron_buzz
            puts 'buzz'
        else
            puts fizzbuzz
    end
end

