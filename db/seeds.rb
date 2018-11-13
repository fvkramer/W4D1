# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Artwork.destroy_all
  ArtWorkShare.destroy_all

  artwork1 = Artwork.new(title: 'The Academy', image_url: 'google.com', artist_id: 1)
  artwork2 = Artwork.new(title: 'The Big Tamale', image_url: 'https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwi0h7f5k9DeAhVFMn0KHU42CAYQjRx6BAgBEAU&url=http%3A%2F%2Fwww.slothville.com%2Fwhat-is-a-sloth%2F&psig=AOvVaw1ycZoXTQQTp_RAnDQxiFEl&ust=1542156802548789', artist_id: 2)

  artwork1.save
  artwork2.save

  ArtWorkShare.create!(artwork_id: Artwork.find_by(title: 'The Academy').id, viewer_id: 4)
  ArtWorkShare.create!(artwork_id: Artwork.find_by(title: 'The Big Tamale').id, viewer_id: 4)
end
