class OrdersController < ApplicationController
  
  def new
    @order = Order.new
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.create(user: current_user) #(order_params)
    # @order.items = []
    @current_cart.items.each do |item|
      OrderItem.create(item: item, order: @order)
      # item.cart_id = nil
    end

    @current_cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end


	private
	
  def order_params
    params.require(:order) #.permit(:name, :email, :address, :pay_method)
	end
=begin 
	def create
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
		@order.save
		session[:order_id] = @order.id
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

	private
		def order_item_params
			params.require(:order_item).permit(:product_id, :quantity)
	end
=end 
end
