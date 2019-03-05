class Item < ApplicationRecord
    
    validates :price, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
	validates :image_url, presence: true

	has_many :join_cart_items
    has_many :carts, through: :join_cart_items

    has_many :order_items
    has_many :orders, through: :order_items
end
