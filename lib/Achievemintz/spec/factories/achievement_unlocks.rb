FactoryGirl.define do
  factory :achievement_unlock do
    player
    achievement

    trait(:unlocked) do
      progression 100
      status 'unlocked'
    end

    trait(:progressing) do
      progression 50
      status 'locked'
    end

    trait(:locked) do
      progression 0
      status 'locked'
    end

  end

end
