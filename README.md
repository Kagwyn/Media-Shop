# Project Overview

For this project, I chose to create a media shop. There is an index page for books and one for movies, each of which can be accessed by pressing the respective buttons on the home page. Everything is practically the same between books and movies, except books have an author, while movies have a director. For extra functionality, the books index page has a search bar that lets you search based on any text related to the book (i.e. title, author, price, release date). Also, each index page has a back button at the bottom that will take you back to the home page.

# Technical Description

Book:
* Title (string) | validation: present, unique
* Author (string) | validation: present
* Price (decimal) | validation: present
* Release Date (date) | validation: present
* Picture (see note)

Movie:
* Title (string) | validation: present, unique
* Director (string) | validation: present
* Price (decimal) | validation: present
* Release Date (date) | validation: present
* Picture (see note)

**Note:** Every media object has an image attached to it, but the images are not stored in the database. Rather, they are handled through Ruby on Rails's active storage tool.

Client-Side Feature: Sorting (books index)

Every book has its own row. The JavaScript checks the text content of each row to see if it includes the search term. If the search term is present within the row, it is shown. If the search term is not present within the row, it is hidden. Both the user's input and text contents are formatted with .trim() and .toLowerCase(), so that unpredictable results are avoided.

# Challenges and Solutions

* Getting bootstrap working:
  * Add **gem "bootstrap", "~> 5.2.3"** to Gemfile
  * Run **bundle install**
  * Change application.css to application.scss
  * At top of application.scss add **@import "bootstrap"**
* Adding images to objects
  * Run **rails active_storage:install**
  * Run **rails db:migrate:reset**
  * In model, include add **has_one_attached :picture**
  * In seeds, instead of **Book.create!(...)**, use **book1 = Book.create!(...)**
  * After the creation statement, attach the picture using **book1.picture.attach(io: File.open("app/assets/images/books/gatsby.jpg"), filename: "gatsby.jpg")**
  * Run **rails db:seed**
* Keeping JavaScript working when moving from page to page
  * On any link that takes you to page including JavaScript, include **data: {turbo: false}**
