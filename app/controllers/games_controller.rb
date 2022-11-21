class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    # Retreive letter input from user
    @input = params[:answer]
    # Retreive displayed random letters(10)
    # Verify iff input matches letters diplayed letters

    @input.all? do |letter|
    @letters.include?(letter)
  end
end
end
