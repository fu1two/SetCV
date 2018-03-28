class Card < ApplicationRecord
  COLORS = %w(red green purple).freeze
  NUMBERS = [1, 2, 3].freeze
  SHAPES = %w(diamond squiggle oval).freeze
  SHADINGS = %w(solid stripes empty).freeze
end
