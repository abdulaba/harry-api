puts "Destroying characters"
Character.destroy_all if Rails.env.development?

puts "Creating characters"
Character.create!(name: "Harry Potter", actor: "Daniel Radcliff")
