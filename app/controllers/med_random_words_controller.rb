class MedRandomWordsController < ApplicationController
  # GET /random_words
  def index
    @words = Word.where("etymos_version_word = 'med'").limit(3).order("RANDOM()")

    render json: @words
  end
end
