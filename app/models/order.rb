class Order < ApplicationRecord
  # after_create :orderconfirm_send
  
  
  has_many :cart

  belongs_to :user
	#belongs_to :cart
	has_many :order_items
  has_many :items, through: :order_item
  
  private
=begin
  def orderconfirm_send
    OrderMailer.orderconfirm_email(self).deliver_now
    OrderMailer.orderadmin_email(self).deliver_now
  end
=end 

end
