

#This game takes a random number between 0-100 and asks the user to try and guess it.
#The user has 5 guesses to get it right. The program will tell the user if thier guess
#is too high or too low.


class Game

  def initialize
    @turns = []               # => []
    @rand_number = rand(100)  # Generate the reandom number
  end

  #Take the input, check it against the guess array and prevent duplicate inputs
  #It also passes the input on to an array to track the number of guesses
  def input
    puts "Guess a number between 0-100 please.  >"
    @guess = gets.chomp.to_i
    while @turns.include?(@guess)
      puts "Didn't we try that one already? Hmmmm Pick again.  >"
      @guess = gets.chomp.to_i
    end
    @turns << @guess
  end
  #Checks the guess to see if it is too high or too low compaired to the random number
  #also checks if it is the correct number.
  def check
    if @rand_number > @guess
        puts "your guess is too low"
      elsif @rand_number < @guess
        puts "your guess is too high"
      elsif @rand_number == @guess
        puts "Congratulations you guessed it.  That was really fucking hard!"
    end
  end
  #this actually runs the program through.
  def begin
    while @turns.length < 5 do
      input
      check
    end
    puts "You wern't even close. Nice try it was #{@rand_number}"
  end
end




game = Game.new  # => #<Game:0x007fd04c0b8438 @turns=[], @rand_number=21>
game.begin
