class StyleItemsController < ApplicationController
  before_action :set_store
  before_action :find_style_item, only: [:show, :edit, :update, :destroy]

  def index
    @style_items = StyleItem.where("store_id = #{@store.id}")
  end

  def show
  end

  def edit
  end

  def update
    if @style_item.update_attributes(style_item_params)
      flash[:success] = "Your style_item entry was updated successfully"
      redirect_to store_style_item_path(store_id: @store.id, id: @style_item.id)
    else
      redirect_to edit_style_item_path(@style_item)
    end
  end

  def destroy
    @style_item.destroy
    redirect_to store_style_items_path(@store)
  end

  def create
    @style_item = StyleItem.new(style_item_params)
    if @style_item.save

      flash[:success] = "The style item was successfully added."
      redirect_to store_style_item_path(store_id: @store.id, id: @style_item.id)
    else
      flash[:error] = "Something went wrong, try again"
      render :new
    end
  end

  def new
    @style_item = StyleItem.new
  end

  private

  def find_style_item
    @style_item = StyleItem.find(params[:id])
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def style_item_params

    params.permit(:store_id, :item_type, :description, :picture, :picture_cache)
  end
end
