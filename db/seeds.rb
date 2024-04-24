# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
book1 = Book.create!(
    title: "The Great Gatsby",
    price: 5.00,
    release: DateTime.new(1925, 4, 10)
)
book1.picture.attach(io: File.open("app/assets/images/gatsby.jpg"), filename: "gatsby.jpg")

book2 = Book.create!(
    title: "The Adventures of Huckleberry Finn",
    price: 11.09,
    release: DateTime.new(1884, 2, 18)
)
book2.picture.attach(io: File.open("app/assets/images/finn.jpg"), filename: "finn.jpg")

book3 = Book.create!(
    title: "Moby Dick",
    price: 6.17,
    release: DateTime.new(1851, 10, 18)
)
book3.picture.attach(io: File.open("app/assets/images/moby.jpg"), filename: "moby.jpg")

book4 = Book.create!(
    title: "Great Expectations",
    price: 5.49,
    release: DateTime.new(1860, 12, 1)
)
book4.picture.attach(io: File.open("app/assets/images/expectations.jpg"), filename: "expectations.jpg")

book5 = Book.create!(
    title: "Wuthering Heights",
    price: 6.99,
    release: DateTime.new(1847, 12, 1)
)
book5.picture.attach(io: File.open("app/assets/images/wuthering.jpg"), filename: "wuthering.jpg")