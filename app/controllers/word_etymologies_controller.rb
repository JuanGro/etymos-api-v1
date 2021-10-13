class WordEtymologiesController < ApplicationController
  before_action :set_word_etymology, only: [:show, :update, :destroy]

  # GET /word_etymologies
  def index
    @word_etymologies = WordEtymology.all

    render json: @word_etymologies
  end

  # GET /word_etymologies/1
  def show
    render json: @word_etymology
  end

  # POST /word_etymologies
  def create
    @word_etymology = WordEtymology.new(word_etymology_params)

    if @word_etymology.save
      render json: @word_etymology, status: :created, location: @word_etymology
    else
      render json: @word_etymology.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /word_etymologies/1
  def update
    if @word_etymology.update(word_etymology_params)
      render json: @word_etymology
    else
      render json: @word_etymology.errors, status: :unprocessable_entity
    end
  end

  # DELETE /word_etymologies/1
  def destroy
    @word_etymology.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_etymology
      @word_etymology = WordEtymology.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_etymology_params
      params.require(:word_etymology).permit(:word_id, :etymology_id, :etymology_order)
    end
end
