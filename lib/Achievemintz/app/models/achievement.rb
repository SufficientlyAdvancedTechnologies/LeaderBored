class Achievement < ActiveRecord::Base
  # Associations
  belongs_to :created_by, class_name: 'User'
    has_many :achievement_unlocks
    has_many :players, class_name: 'User', through: :achievement_unlocks
    has_many :badges, through: :achievement_unlocks


  # Enums
  enum status: [:enabled, :disabled]

  # Callbacks


  private
end
