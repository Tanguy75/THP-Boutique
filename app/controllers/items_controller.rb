class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
    @order_item = current_order.order_items.new
  end 

  private
  	def product_params
  		params.require(:items).permit(:title, :price)
  	end

end