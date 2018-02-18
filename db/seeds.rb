 require 'faker'

 # Create JobPages
 10.times do

   JobPage.create!( 
     name:  Faker::Space.galaxy,
     url:   Faker::Internet.url
   )
 end
 jobPages = JobPage.all
 
 10.times do
   User.create!(
     email: Faker::Internet.unique.safe_email,
     password: Faker::Internet.password
   )
 end
 
 puts "Seed finished"
 puts "#{JobPage.count} jobPages created"
 puts "#{User.count} users created"