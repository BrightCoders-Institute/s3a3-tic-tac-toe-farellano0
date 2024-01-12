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
    [[first_row(0), center, third_col(2)], [first_row(2), center, third_col(0)]]
  end

  def first_row(place)
    @board[0][place]
  end

  def third_col(place)
    @board[2][place]
  end

  def boarding(new_board)
    @board = new_board
  end
end
