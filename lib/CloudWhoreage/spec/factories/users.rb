FactoryGirl.define do
  factory :user do
    sequence(:name)  {|n| "Test User" }
    sequence(:email) {|n| "test_user_#{n}@example.com" }

    trait :player do
      role 'player'
    end

    trait :vip do
      role 'vip'
    end

    trait :developer do
      role 'developer'
    end

    trait :admin do
      role 'admin'
    end

    trait :root do
      role 'root'
    end

  end
end
