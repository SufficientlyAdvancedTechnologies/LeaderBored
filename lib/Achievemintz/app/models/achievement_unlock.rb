class AchievementUnlock < ActiveRecord::Base
  # Associations
  has_one :badge
  belongs_to :player, class_name: 'User'
  belongs_to :achievement

  # Enums
  enum status: [:locked, :unlocked]

  # Callbacks


  private
end
