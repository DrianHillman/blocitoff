require 'random_data'

# Create Users
3.times do
  User.create!(
    email:    RandomData.random_email,
    password: RandomData.random_sentence
  )
end

user = User.create!(
  email: 'dhillman24@gmail.com',
  password: 'blocitoff',
  confirmed_at: "1/1/2016"
  )
demoUser = User.create!(
  email: 'demo@blocitoff.com',
  password: 'blocitoff',
  confirmed_at: "1/1/2016"
  )
  
users = User.all
 
# Create Items
50.times do
  Item.create!(
    user:   users.sample,
    name:   RandomData.random_sentence,
  )
end


puts "Seed finished!"
puts "#{Item.count} items created"
puts "#{User.count} users created"