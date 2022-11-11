
puts "🌱 Seeding spices..."
user1 = User.create(name:"david", email:"rinkanya@gmail.com")
note1 = Note.create(note:"start working", user_id:1,category_id:1)
category1 = Category.create(category:"work", user_id:user1.id, note_id:note1.id)

puts "✅ Done seeding!"
