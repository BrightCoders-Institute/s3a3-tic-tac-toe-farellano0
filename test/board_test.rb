# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/board'

# :reek:InstanceVariableAssumption
# Clase para ejecutar las pruebas de la clase Board
class BoardTest < Minitest::Test
  def setup
    @board = Board.new
  end

  def test_initialization
    expected = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    assert_equal expected, @board.board
  end

  def test_flip
    @board.boarding([['X', ' ', 'O'], [' ', 'X', ' '], ['O', ' ', 'X']])
    expected = [['X', ' ', 'O'], [' ', 'X', ' '], ['O', ' ', 'X']].transpose
    assert_equal expected, @board.flip
  end

  def test_diagonals
    @board.boarding([['X', ' ', 'O'], [' ', 'X', ' '], ['O', ' ', 'X']])
    expected = [%w[X X X], %w[O X O]]
    assert_equal expected, @board.diagonals
  end
end
