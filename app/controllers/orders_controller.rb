class OrdersController < ApplicationController
end
   def new
    
   end
   
   def show
    
   end

   def edit
    @order= Order.find(params[:id])
   end
   
   def create # a revoir avec l'équipe
    @order = Order.create(user: user_current, items: Item.find(params[:id]))


   end

   def update
   end

   def delete
   end
end
