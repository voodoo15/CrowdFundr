# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [
  "Art",
  "Technology",
  "Music"
  "Sports"
  "Crafts"
  "Food"
  "Design"
  "Journalism"
  "theatre"
  "Publishing"
  "Photography"
  "Music"
  "Design"
  "Games"
  "Film & Video"
  "Fashion"
  "Dance"
  "Comics"
]

categories.each do |category|
  Category.create!( description:  category )
end

5.times do



  User.create!(
    first_name: "Mike",
    last_name:  "Thai",
    address:  "123 fake street",
    city:  "Toronto",
    province:  "On",
    postal_code:  "M4K 2E5",
    password:  "Mike",
    password_confirmation:  "Mike",
    phone_number:  1234567891
  )
end

5.times do
  Project.create!(
    title:  "Iphone"
    short_description:  "Nothin but the best"
    long_description:  "The iPhone 6 and iPhone 6 Plus are smartphones designed, and marketed by Apple Inc. The devices are part of the iPhone series and were announced on September 9, 2014, and released on September 19, 2014.[16] The iPhone 6 and iPhone 6 Plus jointly serve as successors to the iPhone 5c and iPhone 5s.

The iPhone 6 and iPhone 6 Plus include a number of changes over their predecessor, including models with larger 4.7 and 5.5 inches (120 and 140 mm) displays, a faster processor, upgraded cameras, improved LTE and Wi-Fi connectivity and support for a near field communications-based mobile payments offering "
    risk_description:  "Possibility of damage to the shipped games and possible slippage of delivery date",
    end_date:  2017-06-04,
    category_id:  2,
    funding_amount:  50000,
    user_id:  3
  )
end

Reward.create!(
  title:  "Reward 1",
  description:  "Get 50% If you order before 2017-05-07",
  amount:  10.0,
  project_id:  3
)

Reward.create!(
  title:  "Reward 2",
  description:  "Be the first to receive the first Iphone 6 on 2017-08-04",
  amount:  500,
  project_id:  3
)

Pledge.create!(
  amount:  10.0,
  user_id:  3,
  reward_id:  3
)

Pledge.create!(
  amount:  15.0,
  user_id:  3,
  reward_id:  3
)

Pledge.create!(
  amount:  10.0,
  user_id:  3,
  reward_id:  3
)
