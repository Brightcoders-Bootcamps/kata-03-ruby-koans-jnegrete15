# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

class Game

    attr_accessor :player1, :player2
  
    def initialize(player1, player2)
      @player1 = Player.new(player1)
      @player2 = Player.new(player2)
    end

    def end?
      if @player1.score >=3000 || @player2.score >=3000
        puts "End of game"
      else
        puts "No yet"
      end

    end

    
end

class Player
  
  attr_reader :score
  
  def initialize(name)
    @name=name
    @score = 0
    @values = []

  end

  def roll
    @values = Array.new(5) { |x| x = rand(1..6) }
   end

   def score()
    # You need to write this method

    ones = @values.count(1)
    two = @values.count(2)
    three = @values.count(3)
    four = @values.count(4)
    five = @values.count(5)
    six = @values.count(6)
    seven = @values.count(7)
    eight = @values.count(8)
    nine = @values.count(9)
  
    ones >= 3 ? @score+=1000 : false
    two >= 3 ? @score+=200 : false
    three >= 3 ? @score+=300 : false
    four >= 3 ? @score+=400 : false
    five >= 3 ? @score+=500 : false
    six >= 3 ? @score+=600 : false
    seven >= 3 ? @score+=700 : false
    eight >= 3 ? @score+=800 : false
    nine >= 3 ? @score+=900 : false
  
    ones >= 3 ? ones-= 3 : false
    two >= 3 ? two-= 3 : false
    three >= 3 ? three-= 3 : false
    four >= 3 ? four-= 3 : false
    five >= 3 ? five-= 3 : false
    six >= 3 ? six-= 3 : false
    seven >= 3 ? seven-= 3 : false
    eight >= 3 ? eight-= 3 : false
    nine >= 3 ? nine-= 3 : false
  
  
    ones < 3 ? @score+= (100*ones) : 0
    five < 3? @score+= (50*five) : 0
  
  
  end
end

game = Game.new("Juan","Pedro")
game.player1.roll
game.player2.roll
game.player1.score
game.player2.score
game.end?

