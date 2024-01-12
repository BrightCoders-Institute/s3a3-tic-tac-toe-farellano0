# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

# Clase para iniciar el juego
class TicTacToe
  attr_reader :first_player, :second_player

  SYMBOL_X = 'X'
  SYMBOL_O = 'O'

  def initialize
    @board = Board.new
    @first_player = create_player(SYMBOL_X, 'Nombre del jugador uno: ')
    @second_player = create_player(SYMBOL_O, 'Nombre del jugador dos: ')
    @current_player = @first_player
  end

  def play
    until game_over?
      @board.display_board
      take_turn
      switch_current_player unless winner?
    end
    display_result
  end

  private

  def create_player(symbol, message)
    puts message
    name = gets.chomp
    Player.new(name, symbol)
  end

  def take_turn
    row, col = move
    if valid_move?(row, col)
      @board.update_cell(row, col, @current_player.type)
    else
      puts 'Movimiento inválido, intente de nuevo'
      take_turn
    end
  end

  def move
    row = cell_input('fila')
    col = cell_input('columna')
    [row, col]
  end

  def cell_input(orientation)
    print "Ingresa el número de #{orientation} (1-3): "
    gets.chomp.to_i - 1
  end

  def valid_move?(row, col)
    row.between?(0, 2) && col.between?(0, 2) && @board.board[row][col] == ' '
  end

  def switch_current_player
    @current_player = @current_player == @first_player ? @second_player : @first_player
  end

  def game_over?
    winner? || board_full?
  end

  def winner?
    lines = @board.board + @board.flip + @board.diagonals
    lines.any? { |line| line.uniq.size == 1 && line.first != ' ' }
  end

  def board_full?
    @board.board.all? { |row| row.none?(' ') }
  end

  def display_result
    @board.display_board
    winner? ? puts("¡#{@current_player.name} ha ganado!") : puts('¡Empate!')
  end
end

game = TicTacToe.new
game.play
