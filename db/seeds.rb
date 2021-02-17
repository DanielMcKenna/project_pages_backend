# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

3.times do
  user = User.new
  user.first_name = Faker::JapaneseMedia::Naruto.demon
  user.last_name = Faker::JapaneseMedia::Naruto.eye
  user.email = Faker::Internet.email
  user.password = "password"
  user.profession = Faker::JapaneseMedia::Naruto.village
  user.bio = Faker::Music::Opera.schubert
  user.linked_in = Faker::JapaneseMedia::Naruto.character
  user.git_hub = Faker::Music.band
  user.instagram = Faker::Music.album
  user.image = Faker::Music.album
  user.twitter = Faker::Twitter.screen_name
  user.save!
end

4.times do
  project_folder = ProjectFolder.new
  project_folder.name = Faker::TvShows::NewGirl.character
  project_folder.number_of_proj = 1
  project_folder.user_id = 1
  project_folder.save!
end

6.times do
  project = Project.new
  project.name = Faker::TvShows::NewGirl.character
  project.image = Faker::Food.dish
  project.description = Faker::TvShows::NewGirl.quote
  project.project_link = Faker::Food.dish
  project.git_hub = Faker::Food.dish
  project.video = Faker::Food.dish
  project.project_folder_id = 1
  project.save!
end


puts "user created"