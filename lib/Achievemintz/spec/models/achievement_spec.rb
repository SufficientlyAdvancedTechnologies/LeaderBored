require 'rails_helper'

RSpec.describe Achievement, :type => :model do
  before(:each) { @achievement = FactoryGirl.create(:achievement) }

  subject { @achievement }

  it { should belong_to :created_by }
  it { should have_many :achievement_unlocks }
  it { should have_many :players }
  it { should have_many :badges }
end
