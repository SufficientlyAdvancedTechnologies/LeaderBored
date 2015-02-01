class User < ActiveRecord::Base
  # Associations
  has_many :achievements,        as: :created_by
  has_many :achievement_unlocks, as: :player
  has_many :badges,              as: :player

  # Enums
  enum role: [:player, :vip, :admin, :root]

  # Callbacks
  after_initialize :set_default_role, :if => :new_record?


  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name  = auth['info']['name'] || ""
        user.email = auth['info']['email'] || ""
      end
    end
  end

  private
  def set_default_role
    if User.count == 0
      self.role ||= :root
    else
      self.role ||= :player
    end
  end
end
