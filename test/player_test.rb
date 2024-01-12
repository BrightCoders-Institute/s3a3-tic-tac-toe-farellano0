# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/player'

# Clase para probar la clase Player
class PlayerTest < Minitest::Test
  def setup
    @player_x = Player.new('Alice', 'X')
    @player_o = Player.new('Bob', 'O')
  end

  def test_player_creation
    assert_equal 'Alice', @player_x.name
    assert_equal 'X', @player_x.type
    assert_equal 'Bob', @player_o.name
    assert_equal 'O', @player_o.type
  end

  def test_player_name
    assert_equal 'Alice', @player_x.name
    assert_equal 'Bob', @player_o.name
  end

  def test_player_type
    assert_includes %w[X O], @player_x.type
    assert_includes %w[X O], @player_o.type
  end

  def test_different_players
    refute_equal @player_x.name, @player_o.name
    refute_equal @player_x.type, @player_o.type
  end
end
