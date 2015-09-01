




class Game



def initialize
  @turns = []               # => []
  @rand_number = rand(100)  # => 21
end


def input
  puts "Guess a number between 0-100 please.  >"                # => nil
  @guess = gets.chomp.to_i                                      # ~> NoMethodError: undefined method `chomp' for nil:NilClass
  while @turns.include?(@guess)
    puts "Didn't we try that one already? Hmmmm Pick again.  >"
    @guess = gets.chomp.to_i
  end
  @turns << @guess
end

def check
  if @rand_number > @guess
      puts "your guess is too low"
    elsif @rand_number < @guess
      puts "your guess is too high"
    elsif @rand_number == @guess
      puts "Congratulations you guessed it.  That was really fucking hard!"
    end
end

def begin
  while @turns.length < 5 do                                     # => true
    input
    check
  end
  puts "You wern't even close. Nice try it was #{@rand_number}"
end


end




game = Game.new  # => #<Game:0x007fd04c0b8438 @turns=[], @rand_number=21>
game.begin
# def rand_number
#   rand(100)      # => 8, 28
# end



# puts "number is #{rand_number}"  # => nil

# rand_number  # => 28



# def guess
#   if @rand_number = input
#     puts "You got it right"
#     elsif @rand_number > input
#       puts "your guess is too low"
#     elsif @rand_number < input
#       puts "your guess is too high"
#   end
#end


# >> Guess a number between 0-100 please.  >

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/chris/theironyard/week2/day2/numberguess/lib/guessing_game.rb:18:in `input'
# ~> /Users/chris/theironyard/week2/day2/numberguess/lib/guessing_game.rb:38:in `begin'
# ~> /Users/chris/theironyard/week2/day2/numberguess/lib/guessing_game.rb:51:in `<main>'
