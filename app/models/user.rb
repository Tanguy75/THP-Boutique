class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD

  has_many :items

  has_one_attached :profile_picture # ActiveStorage: on indique au model user qu'il pourra etre lié à un objet d'Active Storage en locurence une photo de profil.
=======
     
  after_create :welcome_send  
    

  has_one :cart 

  private

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
>>>>>>> d06ac7d0e31c0d6d85ae16a5d0b5bb2cb6e995a3

end
