class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :registerable, and :omniauthable
  devise :confirmable, :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@catalyze\.io\z/, message: "must have an @catalyze.io domain" }
end
