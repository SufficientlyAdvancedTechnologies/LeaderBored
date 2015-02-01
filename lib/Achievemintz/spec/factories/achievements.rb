FactoryGirl.define do
  factory :achievement do
    created_by user
    name "MyString"
    status "enabled"
  end

end
