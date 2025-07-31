require "minitest/autorun"

require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test

    def test_has_a_capitalized_name
        player = Player.new("finn", 60)

        assert_equal "Finn", player.name
    end

    def test_has_an_initial_health
        player = Player.new("finn", 60)

        assert_equal 60, player.health
    end
    
    def test_computes_score_as_sum_of_health_and_length_of_name
        player = Player.new("finn", 60)

        assert_equal 64, player.score
    end

    def test_has_a_string_reprensentation
        player = Player.new("finn", 60)

        assert_equal "I'm Finn with a health of 60 and a score of 64", player.to_s
    end

    def test_players_health_is_boosted
        player = Player.new("finn", 60)

        player.boost

        assert_equal 75, player.health
    end

    def test_players_health_is_drained
        player = Player.new("finn", 60)

        player.drain

        assert_equal 50, player.health
    end

end