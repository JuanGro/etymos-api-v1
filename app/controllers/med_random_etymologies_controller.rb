class MedRandomEtymologiesController < ApplicationController
  # GET /random_words
  def index
    @etymologies = Etymology.where("etymos_version_etymology = 'med'").limit(5).order("RANDOM()")

    render json: @etymologies
  end
end
