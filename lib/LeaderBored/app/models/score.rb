class Score < ActiveRecord::Base
  # Associations
  belongs_to :leaderboard
  belongs_to :player, class_name: 'User'

  # Enums

  # Callbacks


  private
end
