categories = [
  "Art",
  "Technology",
  "Music",
  "Sports",
  "Crafts",
  "Food",
  "Design",
  "Journalism",
  "Theatre",
  "Publishing",
  "Photography",
  "Music",
  "Design",
  "Games",
  "Film & Video",
  "Fashion",
  "Dance",
  "Comics"
]

categories.each do |category|
  Category.create!( description:  category )
end

  User.create!(
    email:  "mike.thai@gmail.com",
    first_name: "Mike",
    last_name:  "Thai",
    address:  "123 fake street",
    city:  "Toronto",
    province:  "ON",
    postal_code:  "M4K2E5",
    password:  "Mike",
    password_confirmation:  "Mike",
    phone_number:  1234567891
  )
#
  Project.create!(
    title:  "Help Fund My Record!",
    short_description:  "My recording studio got robbed and now all my gear is gone. Please send me some $ so I can buy new gear and finish my record!",
    long_description:  "Don't you hate when people break into your place and steal all of your most expensive things and material you've been working on for many years? Me too. That's why you should send me some contributions so I can replace all of my stolen items and then treat myself on a nice vacation so that I can forget the terrible injustice that has been done to me. In fact, I might just spend all the money on my vacation and maybe I'll be inspired to write totally new material to share with you. It's a win-win, right?? ",
    risk_description:  "Possibility of damage to the shipped games and possible slippage of delivery date",
    end_date:  DateTime.tomorrow,
    category_id:  12,
    funding_amount:  150000,
    user_id:  1,
    image: "http://i.ytimg.com/vi/Q4StEidEyBs/maxresdefault.jpg",
  )

Reward.create!(
  title:  "Be first to receive the new record",
  description:  "For only a 10 dollar contribution, be one of the first to receive a vinyl pressing of my record when it comes out! Vinyls come with an unlimited free download code and unique, handdrawn album art by yours truly.",
  amount:  10.0,
  project_id:  1
)

Reward.create!(
  title:  "Receive 1st pressing of record and an invitation to my CD launch party",
  description:  "For $100, you will receive the first reward, along with an exclusive VIP invitation to the record launch party at Site Sound Studios in downtown Toronto. There will be free drinks and food and a surprise performance by a surprise artist.",
  amount:  100.0,
  project_id:  1
)

Reward.create!(
  title:  "A private set for you and your friends",
  description:  "For $2000, you will receive the first reward, a VIP invitation to the record launch party, AND my band and I will fly out to whereever you are in Canada or the US to play a personal performance just for you.",
  amount:  2000.0,
  project_id:  1
)

Pledge.create!(
  amount:  10.0,
  user_id:  1,
  reward_id:  1
)

Pledge.create!(
  amount:  100.0,
  user_id:  1,
  reward_id:  2
)

Pledge.create!(
  amount:  1500.0,
  user_id:  1,
  reward_id:  3
)
