class VetexesController < ApplicationController
  before_action :set_vetex, only: [:show, :update, :destroy]

  # GET /vetexes
  def index
    @vetexes = Vetex.all

    render json: @vetexes
  end

  # GET /vetexes/1
  def show
    render json: @vetex
  end

  # POST /vetexes
  def create
    @vetex = Vetex.new(vetex_params)

    if @vetex.save
      render json: @vetex, status: :created, location: @vetex
    else
      render json: @vetex.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vetexes/1
  def update
    if @vetex.update(vetex_params)
      render json: @vetex
    else
      render json: @vetex.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vetexes/1
  def destroy
    @vetex.update(delete_time: DateTime.now)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vetex
    @vetex = Vetex.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vetex_params
    params.require(:vetex).permit(:name, :icon_name, :is_on_stock, :delete_time)
  end
end
