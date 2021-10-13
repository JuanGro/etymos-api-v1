class LiteRandomEtymologiesController < ApplicationController
  # GET /random_words
  def index
    @etymologies = Etymology.where("etymos_version_etymology = 'lite'").limit(5).order("RANDOM()")

    render json: @etymologies
  end
end
