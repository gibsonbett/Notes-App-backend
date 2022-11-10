

User.destroy_all
Category.destroy_all
Note.destroy_all
puts "🌱 Seeding spices..."
user1 = User.create(name:"david", email:"rinkanya@gmail.com")
notes = Note.create(note:"finish project")

category = Category.create(category:"school", user_id:user1.id, note_id:notes.id)

# puts "Seeding notes..."
# # run a loop 50 times
# 50.times do |n|
# # create a note with random data
# note = Faker::Note.note
# category_id = Faker::Note.category_id
# user_id = Faker::Note.user_id
# Note.create!(
#     note: note,
#     category_id: category_id,
#     user_id: user_id

   
#   )
# end

puts "✅ Done seeding!"
