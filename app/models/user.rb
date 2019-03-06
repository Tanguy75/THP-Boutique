class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
     
  after_create :welcome_send  
    
         validates :first_name,
         presence: true
       
      validates :last_name,
         presence: true
     
      validates :email,
         presence: true,
         
         format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  
  has_one :cart 

  private

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
