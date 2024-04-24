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
book1.picture.attach(io: File.open("app/assets/images/books/gatsby.jpg"), filename: "gatsby.jpg")

book2 = Book.create!(
    title: "The Adventures of Huckleberry Finn",
    price: 11.09,
    release: DateTime.new(1884, 2, 18)
)
book2.picture.attach(io: File.open("app/assets/images/books/finn.jpg"), filename: "finn.jpg")

book3 = Book.create!(
    title: "Moby Dick",
    price: 6.17,
    release: DateTime.new(1851, 10, 18)
)
book3.picture.attach(io: File.open("app/assets/images/books/moby.jpg"), filename: "moby.jpg")

book4 = Book.create!(
    title: "Great Expectations",
    price: 5.49,
    release: DateTime.new(1860, 12, 1)
)
book4.picture.attach(io: File.open("app/assets/images/books/expectations.jpg"), filename: "expectations.jpg")

book5 = Book.create!(
    title: "Wuthering Heights",
    price: 6.99,
    release: DateTime.new(1847, 12, 1)
)
book5.picture.attach(io: File.open("app/assets/images/books/wuthering.jpg"), filename: "wuthering.jpg")



movie1 = Movie.create!(
    title: "The Godfather",
    price: 16.99,
    release: DateTime.new(1972, 3, 24)
)
movie1.picture.attach(io: File.open("app/assets/images/movies/godfather.jpg"), filename: "godfather.jpg")

movie2 = Movie.create!(
    title: "The Wizard of Oz",
    price: 9.99,
    release: DateTime.new(1939, 8, 25)
)
movie2.picture.attach(io: File.open("app/assets/images/movies/oz.jpg"), filename: "oz.jpg")

movie3 = Movie.create!(
    title: "Forrest Gump",
    price: 6.99,
    release: DateTime.new(1994, 7, 6)
)
movie3.picture.attach(io: File.open("app/assets/images/movies/gump.jpg"), filename: "gump.jpg")

movie4 = Movie.create!(
    title: "E.T. The Extra-Terrestrial",
    price: 5.99,
    release: DateTime.new(1982, 6, 11)
)
movie4.picture.attach(io: File.open("app/assets/images/movies/et.jpg"), filename: "et.jpg")

movie5 = Movie.create!(
    title: "Titanic",
    price: 5.00,
    release: DateTime.new(1997, 12, 19)
)
movie5.picture.attach(io: File.open("app/assets/images/movies/titanic.jpg"), filename: "titanic.jpg")