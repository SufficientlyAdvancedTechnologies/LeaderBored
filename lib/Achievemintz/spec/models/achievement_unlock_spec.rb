require 'rails_helper'

RSpec.describe AchievementUnlock, :type => :model do
  before(:each) { @ach_unlock = FactoryGirl.create(:achievement_unlock) }

  subject { @ach_unlock }

  it { should have_one :badge }
  it { should belong_to :player }
  it { should belong_to :achievement }

end
