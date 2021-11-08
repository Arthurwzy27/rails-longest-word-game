require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = %w[y z d u q e z y q i]
  end

  def score
    words = params[:letters]
    @result = 0
    url = "https://wagon-dictionary.herokuapp.com/#{words}"
    word_serialized = URI.open(url).read
    word = JSON.parse(word_serialized)

    @letter_array = words.split(//)

  end

  # split word input
  # compare letter with include method
  # include?








  # def english_word?(word)
  #   response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
  #   json = JSON.parse(response.read)
  #   return json['found']
  # end

  # def score_and_message(attempt, grid)
  #   if included?(attempt.upcase, grid)
  #     if english_word?(attempt)
  #       score = compute_score(attempt)
  #       [score, "Congratulation! #{word} is a valid English word!"]
  #     else
  #       [0, "Sorry but #{word} does not seem to be a valid English word!..."]
  #     end
  #   else
  #     [0, "Sorry but #{word} can't be built our of #{@letters}"]
  #   end
  # end
end
