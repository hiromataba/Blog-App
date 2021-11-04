# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: "Hiro", bio: "Text bio number one ", photo: "Hi"},{name: "Job", bio: "Text bio number two ", photo: "Jo"},{name: "Moise", bio: "Text bio number three ", photo: "Mo"}])

users.each do |user|
  index = 1
  user.post.create([{title:"test post ",text:"Test text index one"},{title:"test post ",text:"Test text index two"},{title:"test post ",text:"Test text index three"}])
  index += 1
end  