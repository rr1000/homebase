class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable, and :omniauthable
  devise :confirmable, :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@datica\.com\z/, message: "must have an @datica.com domain" }
end
