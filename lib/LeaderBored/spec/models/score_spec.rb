require 'rails_helper'

RSpec.describe Score, :type => :model do
  before(:each) { @score = FactoryGirl.create(:score) }

  subject { @score }

  it { should belong_to :leaderboard }
  it { should belong_to :player }
end
