require 'random_data'

# Create Users
5.times do
  User.create!(
    email:    RandomData.random_email,
    password: RandomData.random_sentence
  )
end

user = User.first
user.update_attributes!(
  email: 'dhillman24@gmail.com',
  password: 'blocitoff'
  )
  
users = User.all
 
# Create Items
50.times do
  item = Item.create!(
    user:   users.sample,
    name:   RandomData.random_sentence,
  )
end


puts "Seed finished!"
puts "#{Item.count} items created"
puts "#{User.count} users created"