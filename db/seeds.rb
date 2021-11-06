# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: "Hiro", bio: "Text bio number one ", photo: ""},{name: "Job", bio: "Text bio number two ", photo: ""},{name: "Moise", bio: "Text bio number three ", photo: ""},{name: "Caleb", bio: "Fullstack dev ", photo: ""}])

users.each do |user|
  index = 1
  user.post.create([{title:"Cool post ",text:"Test text index #{post.id}"},{title:"Nice post ",text:"Test text index #{post.id}"},{title:"test post ",text:"Test text index #{post.id}"}])
  index += 1
end  

# 5.times do |i|
# 	user = User.create(name: "User ##{i}", bio: "A bio.")
# 	3.times do |j|
# 		post = Post.create(title: "Interesting Post", text: "This is a post from ...", user: user)
# 		5.times do |j|
# 			Comment.create(text: "Comment ##{j}", post: post, user: user)
# 		end
# 	end
# end