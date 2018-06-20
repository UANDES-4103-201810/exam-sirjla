class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :delivery

  validates :payment, :presence => true
end
