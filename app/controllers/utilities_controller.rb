class UtilitiesController < ApplicationController
  before_action :set_utility, only: [:show, :update, :destroy]

  # GET /utilities
  def index
    @utilities = Utility.all

    render json: @utilities
  end

  # GET /utilities/1
  def show
    render json: @utility
  end

  # POST /utilities
  def create
    @utility = Utility.new(utility_params)

    if @utility.save
      render json: @utility, status: :created, location: @utility
    else
      render json: @utility.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /utilities/1
  def update
    if @utility.update(utility_params)
      render json: @utility
    else
      render json: @utility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /utilities/1
  def destroy
    @utility.update(delete_time: DateTime.now)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_utility
    @utility = Utility.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def utility_params
    params.require(:utility).permit(:name, :icon_name, :stock_on_hand, :stock_at_full, :delete_time)
  end
end
