class ThreadItemsController < ApplicationController
  before_action :set_thread_item, only: [:show, :update, :destroy]

  # GET /thread_items
  def index
    @thread_items = ThreadItem.all

    render json: @thread_items
  end

  # GET /thread_items/1
  def show
    render json: @thread_item
  end

  # POST /thread_items
  def create
    @thread_item = ThreadItem.new(thread_item_params)

    if @thread_item.save
      render json: @thread_item, status: :created, location: @thread_item
    else
      render json: @thread_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thread_items/1
  def update
    if @thread_item.update(thread_item_params)
      render json: @thread_item
    else
      render json: @thread_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thread_items/1
  def destroy
    @thread_item.update(delete_time: DateTime.now)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_thread_item
    @thread_item = ThreadItem.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def thread_item_params
    params.require(:thread_item).permit(:colour_number, :colour_name, :stock_on_hand, :stock_at_full, :color_in_hexa, :delete_time)
  end
end
