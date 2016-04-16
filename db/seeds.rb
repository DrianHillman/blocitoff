require 'random_data'

# Create Users
5.times do
  User.create!(
    name:     RandomData.random_name,
    email:    RandomData.random_email,
    password: RandomData.random_sentence
  )
end
user = User.first
user.update_attributes!(
  email: 'dhillman24@gmail.com',
  password: 'blocitoff'
  )
 
# Create Items
15.times do
  Item.create!(
    name: RandomData.random_sentence
    )
end


puts "Seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"