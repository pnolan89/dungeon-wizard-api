require 'faker'

puts "Clearing data..."
JoinRequest.destroy_all
UserCampaign.destroy_all
Campaign.destroy_all
User.destroy_all


puts "Re-creating users..."

Avatars = ["https://bit.ly/2XGVwkU",
        "https://bit.ly/2tX8YU2",
        "https://bit.ly/2H7saHd",
        "https://bit.ly/2CaG1bT",
        "https://bit.ly/2H4WFxy",
        "https://bit.ly/2TIELH6",
        "https://bit.ly/2VG0jRM",
        "https://bit.ly/2EWW1ji",
        "https://bit.ly/2tUndsO"]


u1 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "beginner",
  avatar: Avatars.sample
})

u2 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "beginner",
  avatar: Avatars.sample
})

u3 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "expert",
  avatar: Avatars.sample
})

u4 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "intermediate",
  avatar: Avatars.sample
})

u5 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "wizard",
  avatar: Avatars.sample
})

u6 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "wizard",
  avatar: Avatars.sample
})

u7 = User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "intermediate",
  avatar: Avatars.sample
})

5.times {
  User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "story-focused",
  exp_level: "expert",
  avatar: Avatars.sample
  })
}

5.times {
  User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "intermediate",
  avatar: Avatars.sample

  })
}

5.times {
  User.create!({
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Lorem.word,
  playing_style: "combat-focused",
  exp_level: "expert",
  avatar: Avatars.sample
  })
}

puts "Re-creating campaigns..."

c1 = u1.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "combat-focused",
  exp_level: "intermediate",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 23, 20 )
})

c2 = u1.campaigns.create!({
  name: Faker::Games::ElderScrolls.city,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "story-focused",
  exp_level: "beginner",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 26, 19 )
})

c3 = u2.campaigns.create!({
  name: Faker::Games::Witcher.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "combat-focused",
  exp_level: "expert",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 27, 12 )
})

3.times {
  u3.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "story-focused",
  exp_level: "intermediate",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 18, 18 )
  })
}

3.times {
  u4.campaigns.create!({
  name: Faker::Games::ElderScrolls.city,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "combat-focused",
  exp_level: "beginner",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 22, 19 )
  })
}

3.times {
  u5.campaigns.create!({
  name: Faker::Games::Witcher.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "combat-focused",
  exp_level: "expert",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 16, 18 )
  })
}

3.times {
  u6.campaigns.create!({
  name: Faker::Movies::LordOfTheRings.location,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "story-focused",
  exp_level: "expert",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 19, 19 )
  })
}

3.times {
  u7.campaigns.create!({
  name: Faker::TvShows::GameOfThrones.city,
  description: Faker::Books::Lovecraft.sentence,
  location: 'Vancouver',
  playing_style: "story-focused",
  exp_level: "intermediate",
  player_limit: 6,
  synopsis: (Faker::Books::Lovecraft.paragraphs).join(' '),
  next_session: DateTime.civil_from_format( :local, 2019, 3, 18, 19 )
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
  user_id: u1.id,
  campaign_id: c1.id,
  message: "I'm so cool!",
  player_confirm: true,
  dm_confirm: "pending"
})

JoinRequest.create!({
  user_id: u1.id,
  campaign_id: c2.id,
  message: "I'm so sweet!",
  player_confirm: true,
  dm_confirm: "pending"
})

JoinRequest.create!({
  user_id: u1.id,
  campaign_id: c3.id,
  message: "I'm so awesome!",
  player_confirm: false,
  dm_confirm: "accepted"
})

JoinRequest.create!({
  user_id: u2.id,
  campaign_id: c2.id,
  message: "I'm so awesome!",
  player_confirm: true,
  dm_confirm: "accepted"
})

JoinRequest.create!({
  user_id: u2.id,
  campaign_id: c3.id,
  message: "I'm so awesome!",
  player_confirm: true,
  dm_confirm: "accepted"
})

JoinRequest.create!({
  user_id: u3.id,
  campaign_id: c1.id,
  message: "I'm so awesome!",
  player_confirm: true,
  dm_confirm: "rejected"
})

JoinRequest.create!({
  user_id: u4.id,
  campaign_id: c1.id,
  message: "I'm so awesome!",
  player_confirm: true,
  dm_confirm: "rejected"
})

JoinRequest.create!({
  user_id: u5.id,
  campaign_id: c3.id,
  message: "I'm so awesome!",
  player_confirm: true,
  dm_confirm: "pending"
})
