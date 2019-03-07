class CartsController < ApplicationController
  def show
    @cart = @current_cart
    @items = @cart.items
    
    @amount = 0
    @cart.items.each do |item|
    @amount += item.price
    end 
	end

	def destroy
		@cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to root_path
  end

  private
  def total
    items.sum(&:price)
  end
  
end
