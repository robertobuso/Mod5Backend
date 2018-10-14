class Api::V1::ItemsController < ApplicationController
  before_action :find_item, only: [:update]

  def index
    @items = Item.all
    render json: @items
  end

  def update
    @item.update(item_params)
    if @item.save
      render json: @item, status: :accepted
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.permit(:category, :inventory, :in_vase, :experience_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
