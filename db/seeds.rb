# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "hashimiqbal46@yahoo.com",password: "hashimiqbal46")
User.create(email: "hashimiqbal13@gmail.com",password: "123456")
User.create(email: "hashimiqbal79@gmail.com",password: "127865")
User.create(email: "hashimiqbal007.com",password: "090078601")
User.create(email: "hashimrajput13@gmail.com",password: "hashimiqbal46")



Post.create(user_id: 1 , title: "first Post", detail: "this is my first post, and i am very excited")
Post.create(user_id: 1 , title: "second Post", detail: "this is my second post, What are u doing here!!")
Post.create(user_id: 2 , title: "first Post", detail: "this is my first post, and i am very excited")
Post.create(user_id: 3 , title: "first Post", detail: "this is my first post, and i am very excited")
Post.create(user_id: 4 , title: "first Post", detail: "this is my first post, and i am very excited")