# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user.first_name = "Test"
user.last_name = "Test"
user.email = "test@test.com"
user.password = "password"
user.profession = "Sucking at this"
user.bio = "Building this for fun but missed a comma and after so many guides i realized it was a comma not my code..."
user.linked_in = "me"
user.git_hub = "git.Git"
user.instagram = "dang I look good"
user.image = "image of me looking good"
user.twitter = "sorry I forgot you"
user.save!

project_folder = ProjectFolder.new
project_folder.name = "React on Rails"
project_folder.number_of_proj = 1
project_folder.user_id = 1
project_folder.save!


project = Project.new
project.name = "Project Pages"
project.image = "home page image"
project.description = "I wanted to create a project page then thought hey everyone needs one"
project.project_link = "projectpages.com"
project.git_hub = "here I am"
project.video = "video of site"
project.project_folder_id = 1
project.save!


puts "user created"