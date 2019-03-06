class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items

  has_one_attached :profile_picture # ActiveStorage: on indique au model user qu'il pourra etre lié à un objet d'Active Storage en locurence une photo de profil.

end
