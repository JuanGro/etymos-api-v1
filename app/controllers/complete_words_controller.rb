class CompleteWordsController < ApplicationController
  # POST /complete_words
  def get_complete_words
    @words = Word.get_words(word_params)

    render json: @words
  end

  private
    # Only allow a trusted parameter "white list" through.
    def word_params
      params.require(:complete_word).permit(words: [:id, :word_word, :meaning_word, :image_word, :etymos_version_word])
    end
end
