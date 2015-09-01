#class GuessingGame
#attr_accessor :number  # => nil


  def rand_number
    number = Random.new  # => #<Random:0x007fc46b17aed0>
    number = rand(100)   # => 90
    number               # => 90
  end
  puts rand_number       # => nil
  # def guesses

  # end

  # def user_input
  #   puts "Guess a number between 0 and 100.  >"
  #   input = gets.chomp
  # end

  # def game
  #   IF rand_number > user_input
  #   puts "guess is to high"
  # end

#end



# >> 90
