class Order < ApplicationRecord
  # after_create :orderconfirm_send
  
  belongs_to :user
  has_many :cart

  belongs_to :user
	#belongs_to :cart
	has_many :order_items
  has_many :items, through: :order_items
  
  private
=begin
  def orderconfirm_send
    UserMailer.orderconfirm_email(self).deliver_now
  end
=end 

end
