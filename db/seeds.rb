# User.destroy_all
# Category.destroy_all
# Note.destroy_all
puts "🌱 Seeding spices..."
user1 = User.create(name:"david", email:"rinkanya@gmail.com")
category1 = Category.create(cat:"work", user_id:user1.id)
note1 = Note.create(todos:"start working", category_id:category1.id )

puts "✅ Done seeding!"
