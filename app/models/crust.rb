class Crust < ApplicationRecord
  has_many :order_pizzas

  def display_name
    "#{self.kind} + $#{self.price}"
  end
end
