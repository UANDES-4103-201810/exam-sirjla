class OrderPizza < ApplicationRecord
  belongs_to :order
  belongs_to :pizza
  belongs_to :crust
end
