# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [
  "art",
  "technology",
  "music"
]

categories.each do |category|
  Category.create!( description:  category )
end

5.times do

  fake_password = Faker::Internet.password

  User.create!(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.first_name,
    address:  Faker::Address.street_address,
    city:  Faker::Address.city,
    province:  ["BC", "AB", "SK", "MB", "ON", "QC", "NB"].sample,
    postal_code:  "#{['A','B','C','D','E'].sample}#{[1, 2, 3, 4, 5].sample}#{['A','B','C','D','E'].sample}#{[1, 2, 3, 4, 5].sample}#{['A','B','C','D','E'].sample}#{[1, 2, 3, 4, 5].sample}",
    email:  Faker::Internet.email,
    password:  fake_password,
    password_confirmation:  fake_password
  )
end

5.times do
  Project.create!(
    title:  Faker::Lorem.word,
    short_description:  Faker::Lorem.sentence,
    long_description:  Faker::Lorem.paragraph,
    risk_description:  Faker::Lorem.sentence,
    start_date:  Faker::Date.forward(2),
    end_date:  Faker::Date.forward(30),
    category_id:  1,
    funding_amount:  10.00
  )
end

Reward.create!(
  title:  "Reward 1",
  description:  Faker::Lorem.sentence,
  amount:  10.0,
  project_id:  1
)

Reward.create!(
  title:  "Reward 2",
  description:  Faker::Lorem.sentence,
  amount:  15.0,
  project_id:  1
)

Pledge.create!(
  amount:  10.0,
  user_id:  1,
  reward_id:  1
)

Pledge.create!(
  amount:  15.0,
  user_id:  2,
  reward_id:  2
)

Pledge.create!(
  amount:  10.0,
  user_id:  3,
  reward_id:  1
)
