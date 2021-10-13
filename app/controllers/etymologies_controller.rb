class EtymologiesController < ApplicationController
  before_action :set_etymology, only: [:show, :update, :destroy]

  # GET /etymologies
  def index
    @etymologies = Etymology.all

    render json: @etymologies
  end

  # GET /etymologies/1
  def show
    render json: @etymology
  end

  # POST /etymologies
  def create
    @etymology = Etymology.new(etymology_params)

    if @etymology.save
      render json: @etymology, status: :created, location: @etymology
    else
      render json: @etymology.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /etymologies/1
  def update
    if @etymology.update(etymology_params)
      render json: @etymology
    else
      render json: @etymology.errors, status: :unprocessable_entity
    end
  end

  # DELETE /etymologies/1
  def destroy
    @etymology.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etymology
      @etymology = Etymology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def etymology_params
      params.require(:etymology).permit(:type_etymology, :language, :graeco_latin_etymology, :pattern, :meaning_etymology, :image_etymology, :etymos_version_etymology)
    end
end
