# frozen_string_literal: true

# Clase para definir al jugador
class Player
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end
