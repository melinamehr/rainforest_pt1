# Product.create(
#   name:  'London Fog Donut',
#   description: 'A yeast doughnut filled with an Earl Grey pastry cream
#   topped with an Earl Grey infused glaze',
#   price_in_cents: 350
# )
# puts "..."
# Product.create(
#   name:  'Tuna Melt Sandwich',
#   description: 'Sharp cheddar, tuna salad on panini',
#   price_in_cents: 499
# )
# puts "..."
# Product.create(
#   name:  'Strawberry Milkshake',
#   description: 'Locally picked strawberries blended in an creme de fraiche',
#   price_in_cents: 399
# )
# puts "..."
# Product.create(
#   name:  'Strawberry Milkshake',
#   description: 'Locally picked strawberries blended in an creme de fraiche',
#   price_in_cents: 399
# )
# puts "..."
Review.create(
  comment:  'Delicious! Highly recommended for anyone and everyone. Will definitely be having again.',
  product_id: Product.first.id
)

Review.create(
  comment:  'So fishy! Would have liked some more salt n peppa',
  product_id: Product.second.id
)
