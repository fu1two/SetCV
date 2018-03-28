class Puzzle < ApplicationRecord
  def find_sets
    sets = []
    cards = create_puzzle

    combinations = cards.combination(3).to_a

    combinations.each do |combo|
      sets << combo if set?(combo)
    end

    if sets.length == 4
      sets
    else
      find_sets
    end
  end

  private

  def create_puzzle
    cards = []
    selected = Card::COLORS.product(Card::NUMBERS, Card::SHAPES, Card::SHADINGS).sample(9)

    selected.each do |card|
      cards << Card.new(color: card[0], number: card[1], shape: card[2], shading: card[3])
    end

    cards
  end

  def set?(combinations)
    color_approved?(combinations) && number_approved?(combinations) && shape_approved?(combinations) && shading_approved?(combinations)
  end

  def color_approved?(combinations)
    length_approved?(:color, combinations)
  end

  def number_approved?(combinations)
    length_approved?(:number, combinations)
  end

  def shape_approved?(combinations)
    length_approved?(:shape, combinations)
  end

  def shading_approved?(combinations)
    length_approved?(:shading, combinations)
  end

  def length_approved?(type, combinations)
    length = combinations.group_by {|card| [card.send(type)] }.length

    length == 1 || length == 3
  end
end
