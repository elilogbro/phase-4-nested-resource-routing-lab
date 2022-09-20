class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    items = Item.all
    render json: item, include: :user
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  private

  def render_not_found_response(error)
    render json: { error: error.message }
  end

end
