class Item < ApplicationRecord

	#has_many :join_cart_items
    #has_many :carts, through: :join_cart_items

    has_many :order_items
    #has_many :orders, through: :order_items
end
