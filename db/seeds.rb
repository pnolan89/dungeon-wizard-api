require 'faker'

puts "Clearing data..."
JoinRequest.destroy_all
UserCampaign.destroy_all
Campaign.destroy_all
User.destroy_all


puts "Re-creating users..."
u1 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "beginner"
})

u2 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "beginner"
})

u3 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "expert"
})

u4 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "intermediate"
})

u5 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "wizard"
})

u6 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "wizard"
})

u7 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "intermediate"
})

5.times {
  User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "expert"
  })
}

5.times {
  User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "intermediate"
  })
}

5.times {
  User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "expert"
  })
}

puts "Re-creating campaigns..."

c1 = u1.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
})

c2 = u1.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
})

c3 = u2.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
})

3.times {
  u3.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
  })
}

3.times {
  u4.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
  })
}

3.times {
  u5.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
  })
}

3.times {
  u6.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
  })
}

3.times {
  u7.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver'
  })
}


puts "Re-creating user-campaign connections"

UserCampaign.create!({
  user_id: u1.id,
  campaign_id: c1.id
})

UserCampaign.create!({
  user_id: u2.id,
  campaign_id: c1.id
})

UserCampaign.create!({
  user_id: u3.id,
  campaign_id: c1.id
})

UserCampaign.create!({
  user_id: u4.id,
  campaign_id: c1.id
})

UserCampaign.create!({
  user_id: u1.id,
  campaign_id: c2.id
})

UserCampaign.create!({
  user_id: u2.id,
  campaign_id: c2.id
})

UserCampaign.create!({
  user_id: u2.id,
  campaign_id: c3.id
})

puts "Re-creating join requests..."

JoinRequest.create!({
  user_id: u7.id,
  campaign_id: c1.id,
  message: "I'm so cool!",
  player_confirm: true,
  dm_confirm: false
})

JoinRequest.create!({
  user_id: u7.id,
  campaign_id: c2.id,
  message: "I'm so sweet!",
  player_confirm: true,
  dm_confirm: false
})

JoinRequest.create!({
  user_id: u7.id,
  campaign_id: c3.id,
  message: "I'm so awesome!",
  player_confirm: false,
  dm_confirm: true
})
