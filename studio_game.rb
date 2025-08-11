require_relative "lib/studio_game/player"
require_relative "lib/studio_game/game"

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

game.play(3)
