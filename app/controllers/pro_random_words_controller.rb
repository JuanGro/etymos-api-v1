class ProRandomWordsController < ApplicationController
  # GET /random_words
  def index
    @words = Word.where("etymos_version_word = 'lite' OR etymos_version_word = 'pro'").limit(3).order("RANDOM()")

    render json: @words
  end
end
