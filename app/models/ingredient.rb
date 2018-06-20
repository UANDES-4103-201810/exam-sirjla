class Ingredient < ApplicationRecord
  has_many :recipe, through: :recipe_ingredients
end
