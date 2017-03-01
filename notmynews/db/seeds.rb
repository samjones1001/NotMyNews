# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

papers = [
  ["the-guardian-uk", "left"],
  ["mirror", "left"],
  ["the-huffington-post", "left"],
  ["the-new-york-times", "left"],
  ["the-washington-post", "left"],
  ["bbc-news", "centre"],
  ["cnn", "centre"],
  ["independent", "centre"],
  ["cnbc", "centre"],
  ["usa-today", "centre"],
  ["daily-mail", "right"],
  ["the-telegraph", "right"],
  ["sky-news", "right"],
  ["the-wall-street-journal", "right"],
  ["metro", "right"],
]

papers.each do |title, position|
  Paper.create(title: title, position: position)
end
