# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Bikerack.destroy_all

10.times do
  latitude = Faker::Address.latitude.to_f
  longitude = Faker::Address.longitude.to_f

  location = RGeo::Geographic.spherical_factory(srid: 4326).point(longitude, latitude)

  BikeRack.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    quantity: Faker::Number.between(from: 1, to: 10),
    style: "a",
    location: location
  )
end
