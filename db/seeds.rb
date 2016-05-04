# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Category.create!(
    description:  Faker::Lorem.word
  )
end

5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.first_name,
    address:  Faker::Address.street_address,
    city:  Faker::Address.city,
    province:  ["BC", "AB", "SK", "MB", "ON", "QC", "NB"].sample,
    postal_code:  "#{['A','B','C','D','E'].sample}#{[1, 2, 3, 4, 5].sample}#{['A','B','C','D','E'].sample}#{[1, 2, 3, 4, 5].sample}#{['A','B','C','D','E'].sample}#{[1, 2, 3, 4, 5].sample}",
    email:  Faker::Internet.email,
    password_digest:  Faker::Internet.password
  )
end

5.times do
  Project.create!(
    title:  Faker::Lorem.word,
    short_description:  Faker::Lorem.sentence,
    long_description:  Faker::Lorem.paragraph,
    risk_description:  Faker::Lorem.sentence,
    start_date:  Faker::Date.forward(2),
    end_date:  Faker::Date.forward(30)
  )
end
