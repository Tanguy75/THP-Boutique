class OrdersController < ApplicationController

  def create
    @order = Cart.find(params[:cart_id])
    @user = current_user

    o = Order.create(user_id: @user.id, cart_id: @order)

    if o.save
      flash[:success] = "Le panier a été validé"
           redirect_to #_path(e)
 
     elsif 
      flash[:danger] = "Une erreur est survenue"
       redirect_to root_path
     end
  end 

end
