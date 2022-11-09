puts "🌱 Seeding spices..."

# Seed your database here
# Make 10 users
10.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email)
  end
  
  # Make 50 Notess
#   50.times do
#     # create a Note with random data
#      Note.create(
#       title: Faker::Note.title,
#       category: Faker::Note.category,
#     )
# end
    # create between 1 and 5 reviews for each Note
      # get a random user for every review

puts "✅ Done seeding!"
