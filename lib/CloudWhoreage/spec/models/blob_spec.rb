require 'rails_helper'

RSpec.describe Blob, :type => :model do
  it { should belong_to :app }
  it { should belong_to :user }

  it "should have tests regarding status..."
end
