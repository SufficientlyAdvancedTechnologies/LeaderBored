class Badge < ActiveRecord::Base
  # Associations
  belongs_to :achievement_unlock
  belongs_to :player, class_name: 'User'
     has_one :achievement, through: :achievement_unlock

  # Enums
  enum status: [:locked, :unlocked]

  # Callbacks
  after_initialize :calculate_multiplier
       before_save :unlock_badge


  private
  # Checks the achievement_unlock to determine if we've progressed
  # far enough to unlock a badge.
  def calculate_multiplier
    self.multiplier = self.achievement_unlock.progression.to_f/100.00
  end

  # Unlock the badge if the multiplier is greater than 1
  def unlock_badge
    self.status = :unlocked if self.multiplier >= 1.0
  end

  # Force the badge to unlock, then save the record.
  def unlock_badge!
    self.status = :unlocked
    save
  end
end
