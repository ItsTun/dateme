class Lady < ApplicationRecord
  has_many :interests
  has_many_attached :images
  belongs_to :user
end
