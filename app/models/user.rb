class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates

  validates :email, presence: true, uniqueness: true, confirmation: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i, message: "only allows email format"}
  validates :password, presence: true, length: {minimum: 6}
  
end
