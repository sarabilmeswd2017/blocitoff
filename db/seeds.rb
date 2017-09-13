require 'faker'

u = User.create(
email: 'joe@user.com',
password: 'password',
confirmed_at: Time.now
)

15.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password,
  confirmed_at: Time.now
  )
end
users = User.all

50.times do
  # #1
  Item.create!(
  name:  Faker::Lorem.sentence,
  user: users.sample
  )
end
items = Item.all

puts "Seed finished"
puts "#{Item.count} wikis created"
puts "#{User.count} users created"
