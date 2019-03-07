class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @cart = @current_cart
    @items = @cart.items
    
    @amount = 0
    @cart.items.each do |item|
    @amount += item.price

	  customer = Stripe::Customer.create({
	    email: params[:stripeEmail],
	    source: params[:stripeToken],
	  })

	  charge = Stripe::Charge.create({
	    customer: customer.id,
	    amount: @amount.to_i,
	    description: 'Rails Stripe customer',
	    currency: 'eur',
	  })

	if charge.paid
		@order = Order.create(user: current_user) #(order_params)
    # @order.items = []
    @current_cart.items.each do |item|
      OrderItem.create(item: item, order: @order)
			# item.cart_id = nil
			flash[:success] = "Ton paiement a bien été pris en compte"
    end

    # send emails after creation of Order and OrderItem
    OrderMailer.orderconfirm_email(@order).deliver_now
    OrderMailer.orderadmin_email(@order).deliver_now

    @current_cart.destroy
    session[:cart_id] = nil
    redirect_to user_path(current_user.id), :flash => { :success => "Command confirmed!" }
	end

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
  end
end

end
