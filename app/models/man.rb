class Man < ApplicationRecord
  has_many :interest
  has_many_attached :images
  belongs_to :user
end
