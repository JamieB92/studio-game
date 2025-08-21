module TreasureTrove

  Treasure = Data.define(:name, :points)

  TREASURES = [
    Treasure.new("pie", 10),
    Treasure.new("coin", 25),
    Treasure.new("flute", 50),
    Treasure.new("compass", 65),
    Treasure.new("key", 80),
    Treasure.new("crown", 90),
    Treasure.new("star", 100)
  ]
  def self.random_treasure
    TREASURES.sample
  end
end