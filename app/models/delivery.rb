class Delivery < ApplicationRecord
  has_one :order

  validates :phone, numericality: { only_integer: true }
  validates :phone, :address_1, :address_2 , presence: true
end
