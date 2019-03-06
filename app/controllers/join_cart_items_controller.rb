class JoinCartItemsController < ApplicationController
    before_action :set_cart, only: [:create, :destroy]
    before_action :authenticate_user!, only: [:create, :destroy]
  
    def create
      chosen_item = Item.find(params[:item_id])
      current_cart = @current_cart
    
      if !current_cart.items.include?(chosen_item)
        @join_cart_item = JoinCartItem.new
        @join_cart_item.cart = current_cart
        @join_cart_item.item = chosen_item
      end
    
      @join_cart_item.save
      redirect_to root_path
      flash[:success] = "L'article a bien été ajouté au panier"
    end
  
    def destroy
      @join_cart_item = JoinCartItem.find(params[:id])
      @join_cart_item.destroy
      redirect_to cart_path(@current_cart)
    end
    
    private
      def join_cart_item_params
        params.require(:join_cart_item_params).permit(:item_id, :cart_id)
    end
  
end
