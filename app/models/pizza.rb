class Pizza < ApplicationRecord
  belongs_to :recipe

  def self.get_price(id)
    pizza = Pizza.find(id)
    total = 0
    total += pizza.recipe.price

    total
  end
end
