require 'random_data'


# Create Items
15.times do
  Item.create!(
    name: RandomData.random_sentence
    )
end


puts "Seed finished"
puts "#{Item.count} items created"