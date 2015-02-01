class Leaderboard < ActiveRecord::Base
  # Associations
  belongs_to :created_by, class_name: 'User'
  has_many :scores

  # Enums
  enum status: [:enabled, :disabled]

  # Callbacks


  private
end
