class Personal < ApplicationRecord
  has_and_belongs_to_many :interests
  accepts_nested_attributes_for :interests
  has_many_attached :images
  belongs_to :user
  belongs_to :gender

  # validates :user_id, presence: true, numericality: { only_integer: true }
  # validates :gender_id, presence: true, numericality: { only_integer: true }
  # validates :name, presence: true
  # validates :age, presence: true, numericality: { only_integer: true }
  # validates :height, presence: true, numericality: { only_integer: true }
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :ph_no, presence: true
  # validates :description, presence: true
end
