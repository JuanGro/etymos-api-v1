class ProRandomEtymologiesController < ApplicationController
  # GET /random_words
  def index
    @etymologies = Etymology.where("etymos_version_etymology = 'lite' OR etymos_version_etymology = 'pro'").limit(5).order("RANDOM()")

    render json: @etymologies
  end
end
