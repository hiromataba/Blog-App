# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([{name: 'carlo', email: 'dfffff@gmail.com', password: 'fwafafawf', photo: 'https://images-eu.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX198_BO1,204,203,200_QL40_ML2_.jpg', postsCounter:1, bio: 'Bio of the user'},
    {name: 'marco', email: 'dfjiafwfwaffawhf@gmail.com', password: 'fwafafawf', photo: 'https://images-eu.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX198_BO1,204,203,200_QL40_ML2_.jpg', postsCounter:1, bio: 'Bio of the user'},
    {name: 'giulio', email: 'dffffff@gmail.com', password: 'fwafafawf', photo: 'https://images-eu.ssl-images-amazon.com/images/I/41vMBIeF-zL._SX198_BO1,204,203,200_QL40_ML2_.jpg', postsCounter:1, bio: 'Bio of the user'}])

Post.create!([{ user_id: 1, title: 'post1', text: 'beautiful', commentsCounter: 3, likesCounter: 3 },
     { user_id: 1, title: 'post2', text: 'beautiful1', commentsCounter: 3, likesCounter: 3 },
     { user_id: 2, title: 'post3', text: 'beautiful2', commentsCounter: 3, likesCounter: 3 },
     { user_id: 2, title: 'post4', text: 'beautiful3', commentsCounter: 3, likesCounter: 3 },
     { user_id: 2, title: 'post5', text: 'beautiful4', commentsCounter: 3, likesCounter: 3 },
     { user_id: 3, title: 'post6', text: 'beautiful5', commentsCounter: 3, likesCounter: 3 }, ])

Comment.create([{ user_id: 1, post_id:1, text: 'Omg! i love it!' },
     { user_id: 1,post_id:2, text: 'Omg! i love it!' },
     { user_id: 2,post_id:1, text: 'Omg! i love it!' },
     { user_id: 2,post_id:2, text: 'Omg! i love it!' },
     { user_id: 2,post_id:3, text: 'Omg! i love it!' },
     { user_id: 3,post_id:1, text: 'Omg! i love it!' }, ])                        

Like.create([{ user_id: 1, post_id:1,  },
     { user_id: 1,post_id:2 },
     { user_id: 2,post_id:1},
     { user_id: 2,post_id:2 },
     { user_id: 2,post_id:3 },
     { user_id: 3,post_id:1 }, ])    