# frozen_string_literal: true

# Clase para definir el tablero del Tic Tac Toe
class Board
  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3, ' ') }
  end

  def display_board
    @board.each { |row| puts row.join(' | ') }
    puts '-----' * 2
  end

  def update_cell(row, col, value)
    @board[row][col] = value
  end

  def flip
    @board.transpose
  end

  def diagonals
    center = @board[1][1]
    [[@board[0][0], center, @board[2][2]], [@board[0][2], center, @board[2][0]]]
  end

  def boarding(new_board)
    @board = new_board
  end
end
