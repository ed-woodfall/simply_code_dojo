require 'securerandom'

class Fallout  
  def initialize(complexity = 1, wordlist = ['hello', 'world'])  
 
    @complexity = set_complexity(complexity)
    @wordlist = wordlist  
    set_word
  end  

  def set_word
  	word_index = SecureRandom.random_number @wordlist.length
  	@current_word = @wordlist[word_index]
  	@split_word = @current_word.split('')
  end

  def set_complexity(complexity)
  	raise ArgumentError.new('invalid complexity value') if complexity < 1 || complexity > 15
  	complexity
  end

  def get_complexity
  	@complexity
  end

  def display  
    puts "Using a complexity of #{@complexity}. The current word is #{@current_word}."  
  end  

  def evaluate_guess(guess = '')

  	w1 = guess.split('')
  	result = w1.zip(@split_word).map { |x, y| x == y }

  	grades = {"correct" =>  result.count(true), "incorrect" => result.count(false)}




  end

end  