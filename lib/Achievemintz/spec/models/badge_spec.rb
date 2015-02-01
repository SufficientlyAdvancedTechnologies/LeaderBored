require 'rails_helper'

RSpec.describe Badge, :type => :model do
  before(:each) { @badge = FactoryGirl.create(:badge) }

  subject { @badge }

  it { should belong_to :achievement_unlock }
  it { should belong_to :player }
  it { should have_one :achievement }

  it "should calculate multiplier"
  it "should unlock badge automatically if multiplier is >= 1"
end
