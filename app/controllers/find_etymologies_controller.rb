class FindEtymologiesController < ApplicationController
  # POST /find_etymologies
  def find_etymology
    @etymologies = Etymology.find_by(graeco_latin_etymology: etymology_params[:graeco_latin_etymology], pattern: etymology_params[:pattern], meaning_etymology: etymology_params[:meaning_etymology])
    if @etymologies == nil
      @etymologies = Etymology.create(etymology_params)
    end

    render json: @etymologies
  end

  private
    # Only allow a trusted parameter "white list" through.
    def etymology_params
      params.require(:find_etymology).permit(:type_etymology, :language, :graeco_latin_etymology, :pattern, :meaning_etymology, :image_etymology, :etymos_version_etymology)
    end
end
