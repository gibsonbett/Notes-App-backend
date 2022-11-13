User.destroy_all
Note.destroy_all
puts "🌱 Seeding spices..."
User.create(username: 'tosh', email: 'tosh@gmail.com', password: 'gg')
User.create(username: 'kev', email: 'kev@gmail.com', password: 'gg')
User.create(username: 'dan', email: 'dan@gmail.com', password: 'gg')
User.create(username: 'kim', email: 'kim@gmail.com', password: 'gg')
user1 = User.create(username: 'tess', email: 'tess@gmail.com', password: 'gg')



Note.create(category: "work", todos: "finish up the project",  user_id:user1.id)





puts "✅ Done seeding!"