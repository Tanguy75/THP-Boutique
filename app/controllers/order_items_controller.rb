class OrderItemsController < ApplicationController

  before_action :set_unit_price
  before_action :set_total_price

  def create 
    @order = current_order
    @order_item = @order.order_items.new(order_params)
    @order.save
    session[cart_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items    
  end

  def unit_price
    if persisted?
      self[:unit_price]
    else
      item.price
    end
  end

	def total_price
		unit_price * quantity
	end


	private

	    def set_unit_price
	      self[:unit_price] = unit_price
	    end

	    def set_total_price
	      self[:total_price] = quantity * set_total_price
	    end

	    def order_params
	      params.require(:order_item).permit(:item_id, :quantity)
	    end
end
