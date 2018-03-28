class Card < ApplicationRecord
  COLORS = %w(red green purple).freeze
  NUMBERS = [1, 2, 3].freeze
  SHAPES = %w(diamond squiggle oval).freeze
  SHADINGS = %w(solid stripes empty).freeze

  attr_accessor :color, :number, :shape, :shading

  def initialize(**options)
    @color = options[:color]
    @number = options[:number]
    @shape = options[:shape]
    @shading = options[:shading]
  end
end
