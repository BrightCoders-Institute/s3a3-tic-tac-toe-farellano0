# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/tic_tac_toe'
require_relative '../src/player'
require_relative '../src/board'

# Clase para probar la clase Tic Tac Toe
class TicTacToeTest < Minitest::Test
  def setup
    @game = TicTacToe.new
  end

  def test_game_initialization
    assert_instance_of Player, @game.first_player
    assert_instance_of Player, @game.second_player
    assert_equal @game.first_player, @game.current_player
  end

  def test_switch_current_player
    current_player = @game.current_player
    @game.send(:switch_current_player)
    refute_equal current_player, @game.current_player
  end
end
