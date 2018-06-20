# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredient_list = [
    'Pepperoni',
    'Cheese',
    'Olives'
]

ingredients = []
ingredient_list.each do |name|
  ingredients <<  Ingredient.create(
      name:name
  )
end

crust_list = [
    [
        'Thick',
        5
    ],
    [
        'thin',
        3
    ],
]

crusts = []
crust_list.each do |kind, price|
  crusts <<  Crust.create(
      kind:kind,
      price:price
  )
end

recipe_list = [
    [
        'Pepperoni',
        10
    ],
    [
        'Italian',
        15
    ],
]

recipes = []
recipe_list.each do |name, price|
  recipes <<  Recipe.create(
      name:name,
      price:price
  )
end

customer_list = [
    [
        'Joe',
    ]
]

customers = []
customer_list.each do |name|
  customers <<  Customer.create(
      name:name
  )
end

pizzas = []

pizzas <<  Pizza.create(
    recipe:recipes[0],
    name: "Pepperoni"
)
pizzas <<  Pizza.create(
    recipe:recipes[1],
    name: "Italian",
)