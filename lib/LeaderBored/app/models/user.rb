class User < ActiveRecord::Base
  # Associations
  has_many :leaderboards, as: :created_by
  has_many :scores, as: :player

  # Enums
  enum role: [:player, :vip, :developer, :admin, :root]

  # Callbacks
  after_initialize :set_default_role, :if => :new_record?


  private
  def set_default_role
    if User.count == 0
      self.role ||= :admin
    else
      self.role ||= :player
    end
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name  = auth['info']['name']  || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

end
