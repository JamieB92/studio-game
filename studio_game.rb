class Player

  attr_reader :health, :name, :score
  attr_accessor :name 

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def drain
    @health -= 10 
  end 

  def boost
    @health  += 15
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def to_s #
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end


end

class Game

  attr_reader :title, :players

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def roll_die
    rand(1..6)
  end

  def play

    puts "\nLets play #{@title}"

    puts "\nBefore playing:"
    puts @players

    @players.each do |player|

      number_rolled = roll_die

      case number_rolled
      when 1..2
        player.drain
        puts "#{player.name} got drained 😒"
      when 3..4
        puts "#{player.name} got skipped"
      else
        player.boost
        puts "#{player.name} got boosted 😁"
      end
    end
      
    puts "\nAfter playing:"
    puts @players

  end

end

player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase", 100)
player_4 = Player.new("alex", 125)
player_5 = Player.new("cole", 75)

game = Game.new("Winner Takes All")
game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.add_player(player_5)

game.play






