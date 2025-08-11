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

  def play(rounds = 1)

    puts "\nLets play #{@title}"

    puts "\nBefore playing:"
    puts @players

    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
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
    end
    puts "\nAfter playing:"
    puts @players

  end

end
