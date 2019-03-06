class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end 

  def destroy
    @cart_item = @current_cart.item(:item_id)
    @item = Item.find(params[:id])
    @cart_item.destroy
  end 
end