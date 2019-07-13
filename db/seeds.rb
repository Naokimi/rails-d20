# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "emptying database"

Response.destroy_all
Discussion.destroy_all
User.destroy_all

puts "creating users"

User.create!(nickname: "Sirien")
User.create!(nickname: "Jerson")
User.create!(nickname: "Gurney")
User.create!(nickname: "Naokimi")
User.create!(nickname: "ShadoWWW")

puts "creating discussions"

titles = ["Dungeons & Dragons 5e", "Shadowrun", "Vampire the Masquerade 5e", "DrD", "Fate Core (4e)", "DrD+", "DrD II", "Pathfinder 2", "GUMSHOE", "FAE"]
10.times do
  discussion = Discussion.new(title: titles.delete_at(rand(0..(titles.size - 1))), first_post: Faker::Lorem.paragraph)
  discussion.user = User.all.sample
  discussion.save!
end

puts "populating discussions with responses"

100.times do
  response = Response.new(content: Faker::Lorem.paragraph)
  response.user = User.all.sample
  response.discussion = Discussion.all.sample
  response.save!
end

puts "finished"
