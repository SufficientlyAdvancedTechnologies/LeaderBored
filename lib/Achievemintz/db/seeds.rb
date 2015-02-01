# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
player        = User.create(name: 'Player 1', role: 'player')
player2       = User.create(name: 'Player 2', role: 'player')
player3       = User.create(name: 'Player 3', role: 'player')
player4       = User.create(name: 'Player 4', role: 'player')
root          = User.create(name: 'Root', role: 'root')
ach1          = Achievement.create(name:'Test Achievement 1', status: 'enabled', created_by: root)

ach1_lock     = AchievementUnlock.create(achievement: ach1, player: player,  progression: 0,    status: 'locked')
ach1_progress = AchievementUnlock.create(achievement: ach1, player: player2, progression: 50,   status: 'locked')
ach1_unlock   = AchievementUnlock.create(achievement: ach1, player: player3, progression: 100,  status: 'unlocked')
ach1_beyond   = AchievementUnlock.create(achievement: ach1, player: player4, progression: 9180, status: 'unlocked')

badge1_lock   = Badge.create(achievement_unlock: ach1_lock,     player: player,  status: 'locked')
badge2_mult   = Badge.create(achievement_unlock: ach1_progress, player: player2, status: 'locked')
badge3_unlock = Badge.create(achievement_unlock: ach1_unlock,   player: player3, status: 'unlocked')
badge4_multx2 = Badge.create(achievement_unlock: ach1_beyond,   player: player4, status: 'unlocked')
