class Customer < ApplicationRecord
  has_many :orders, through: :order_pizzas
end
