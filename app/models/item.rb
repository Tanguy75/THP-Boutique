class Item < ApplicationRecord

	has_many :join_cart_items
    has_many :carts, through: :join_cart_items
end
