 require 'faker'

 # Create JobPages
 5.times do

   JobPage.create!( 
     name:  Faker::Space.galaxy,
     url:   Faker::Internet.url
   )
 end
 jobPages = JobPage.all
 
 5.times do
   User.create!(
     email: Faker::Internet.unique.safe_email,
     password: Faker::Internet.password,
     role: 0
   )
 end

 users = User.all

50.times do
  JobSearch.create!(
  	user: users.sample,
  	job_page: jobPages.sample,
  	job_title: Faker::Food.dish
  )
end

jobSearches = JobSearch.all

 
 puts "Seed finished"
 puts "#{JobPage.count} jobPages created"
 puts "#{User.count} users created"
 puts "#{JobSearch.count} jobSearches created"