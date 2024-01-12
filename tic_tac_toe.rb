# frozen_string_literal: true

# importaciones
require_relative 'board'
require_relative 'player'

# Clase para iniciar el juego
class TicTacToe
  attr_reader :player1, :player2

  def initialize
    @board = Board.new
    puts 'Nombre del jugador uno: '
    name1 = gets.chomp
    @player1 = Player.new(name1, 'X')
    puts 'Nombre del jugador dos: '
    name2 = gets.chomp
    @player2 = Player.new(name2, 'O')
    @current_player = player1
  end

  def play
    until game_over?
      @board.display_board
      take_turn
      switch_current_player unless winner?
    end

    @board.display_board
    result
  end

  private

  def take_turn
    puts "Turno de #{@current_player.name} (#{@current_player.type}): "
    row = show_cell('fila')
    col = show_cell('columna')

    if valid_move?(row, col)
      @board.board[row][col] = @current_player.type
    else
      puts 'Movimiento inválido, intente de nuevo'
      take_turn
    end
  end

  def show_cell(orientation)
    print "Ingresa el número de #{orientation} (1-3)"
    gets.chomp.to_i - 1
  end

  def valid_move?(row, col)
    row.between?(0, 2) && col.between?(0, 2) && @board.board[row][col] == ' '
  end

  def switch_current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    winner? || board_full?
  end

  def winner?
    # verifica filas, columnas y diagonales
    lines = @board.board + @board.flip + diagonals
    lines.any? { |line| line.uniq.size == 1 && line.first != ' ' }
  end

  def board_full?
    @board.board.all? { |row| row.none?(' ') }
  end

  def diagonals
    board = @board.board
    [[board[0][0], board[1][1], board[2][2]], [board[0][2], board[1][1], board[2][0]]]
  end

  def result
    winner? ? puts("¡#{@current_player.name} ha gando!") : puts('¡Empate')
  end
end

game = TicTacToe.new
game.play
