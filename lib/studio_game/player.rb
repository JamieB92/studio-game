class Player

  attr_reader :health, :name, :score
  attr_accessor :name 

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
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
    "I'm #{@name} with a health of #{@health} and a score of #{score}: #{@found_treasures}"
  end


end
