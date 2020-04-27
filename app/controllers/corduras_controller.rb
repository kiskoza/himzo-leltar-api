class CordurasController < ApplicationController
  before_action :set_cordura, only: [:show, :update, :destroy]

  # GET /corduras
  def index
    @corduras = Cordura.all

    render json: @corduras
  end

  # GET /corduras/1
  def show
    render json: @cordura
  end

  # POST /corduras
  def create
    @cordura = Cordura.new(cordura_params)

    if @cordura.save
      render json: @cordura, status: :created, location: @cordura
    else
      render json: @cordura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /corduras/1
  def update
    if @cordura.update(cordura_params)
      render json: @cordura
    else
      render json: @cordura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /corduras/1
  def destroy
    @cordura.update(delete_time: DateTime.now)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cordura
    @cordura = Cordura.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cordura_params
    params.require(:cordura).permit(:colour_name, :stock_on_hand, :stock_at_full, :color_in_hexa, :delete_time)
  end
end
