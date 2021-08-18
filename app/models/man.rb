class Man < ApplicationRecord
  has_and_belongs_to_many :interests
  has_many_attached :images
  belongs_to :user

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :height, presence: true, numericality: { only_integer: true }
  validates :two_hr_price, presence: true, numericality: { only_integer: true }
  validates :three_hr_price, presence: true, numericality: { only_integer: true }
  validates :ph_no, presence: true
end
