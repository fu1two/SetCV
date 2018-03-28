class PuzzlesController < ApplicationController
  def index
    puzzle = Puzzle.new
    @sets = puzzle.find_sets
    ap @sets
  end
end
