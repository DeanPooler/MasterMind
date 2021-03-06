# frozen_string_literal: true

require 'pry'
require 'colorize'

COLORS = %w[red green blue yellow purple brown].freeze

# The Game class contains: the game loop, win conditions and instances of the classes following it.
class Game
  def initialize; end
end

# The CodeMaker class is used for generating codes to guess and giving feedback from CodeBreaker guesses.
# It also has an option to make it player controlled or computer controlled.
class CodeMaker
  attr_accessor :code
  def initialize
    @code = Array.new(4, 'temp')
  end

  def generate_code
    code.each_with_index do |_value, index|
      temp_rand = rand(0..5)
      code[index] = COLORS[temp_rand]
    end
  end

  def show_code
    code
  end

  # TODO: make a condition that checks if player controlled or computer controlled
  def is_player_controlled?; end
end

# TODO: - Make CodeBreaker class
# The CodeBreaker class is used for guessing the codes generated by the CodeMaker class.
# It also has an option to make it player controlled or computer controlled.
class CodeBreaker
  def initialize; end
end

code_maker = CodeMaker.new
code_maker.generate_code
code_maker.show_code
