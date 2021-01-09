class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('A'..'Z').to_a.sample
    end
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @score = if @word.upcase != @letters
      "Sorry, but #{@word} cannot be spelled with #{@letters}."
    elsif @word.upcase == @letters
      "Sorry, but #{@word} is not a valid English word."
    else @word.upcase == @letters
      "Congratulations! #{@word} is a valid English word!"
    end
  end
end
