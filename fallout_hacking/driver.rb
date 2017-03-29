require_relative 'fallout'

puts 'Enter the complexity?'
complexity = gets.to_i

wordlist = File.read('./wordlist.txt').split

f = Fallout.new(complexity, wordlist)
f.display

i = 1
num = 5

while i < num  do
   puts("Enter your guess: #{i} of #{num}" )
   guess = gets

   result = f.evaluate_guess(guess)

   return 'you won' result == 

	i += 1
    puts 'you lost'
   
end

