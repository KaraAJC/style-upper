class StyleItemsController < ApplicationController
  before_action :set_store
  before_action :find_style_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @style_items = StyleItem.where("store_id = #{@store.id}")
  end

  def show
  end

  def edit
  end

  def update
    if @style_item.update_attributes!(update_params)
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

<<<<<<< HEAD

=======
>>>>>>> f69ac5ac4278838c0cc8358b0031c288e1d0f4a7
  def update_params
    update_params = style_item_params.to_h
    update_params[:picture] = update_params[:picture].first
    update_params
  end
<<<<<<< HEAD

  def style_item_params

=======

  def style_item_params
>>>>>>> f69ac5ac4278838c0cc8358b0031c288e1d0f4a7
    params.permit(:store_id, :item_type, :description, picture: [])
  end
end
