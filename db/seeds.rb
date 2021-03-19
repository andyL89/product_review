# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

20.times do |index|
  product = Product.create!(name: Faker::Music.unique.instrument, cost: Faker::Commerce.price, country_of_origin: Faker::Nation.nationality)
  5.times do |index|
    review = Review.create!(author: Faker::Name.unique.first_name, content_body: Faker::Quotes::Shakespeare.unique.as_you_like_it_quote, rating: Faker::Number.between(from: 1, to: 5))
  end
end