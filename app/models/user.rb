class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :ladies
  has_many :men
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
