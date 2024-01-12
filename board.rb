# frozen_string_literal: true

# Clase para definir el tablero del Tic Tac Toe
class Board
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
  end

  def display_board
    @board.each { |row| puts row.join(' | ') }
    puts '-----' * 2
  end

  def flip
    @board.transpose
  end
end
