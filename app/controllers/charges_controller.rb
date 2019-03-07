class ChargesController < ApplicationController

    def new
      
    end
    
    def create
      
      
      
      # Amount in cents
      @amount = params[:cart_amount]
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: 5000,
        description: 'total du panier',
        currency: 'eur',
      })
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
    end


end