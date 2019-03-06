class OrdersController < ApplicationController

  before_save :set_subtotal

  def subtotal
    order_items.collect {|order| order_item.valid ? order_item.unit_price*order_item.quantity : 0}.sum
  end

  def edit
    @order= Order.find(params[:id])
  end

  def total_price
    unit_price * quantity
  end

  private
    def set_subtotal
      self[:subtotal] = subtotal
    end
    
end
