require 'rails_helper'

RSpec.describe Leaderboard, :type => :model do
  before(:each) { @leaderboard = FactoryGirl.create(:leaderboard) }

  subject { @leaderboard }
  
  it { should belong_to :created_by }
  it { should have_many :scores }
end
