

User.destroy_all
Category.destroy_all
Note.destroy_all
puts "🌱 Seeding spices..."
user1 = User.create(name:"david", email:"rinkanya@gmail.com")
notes = Note.create(note:"finish project")

category = Category.create(category:"school", user_id:user1.id, note_id:notes.id)



puts "✅ Done seeding!"
