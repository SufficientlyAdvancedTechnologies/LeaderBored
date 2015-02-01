describe User do

  before(:each) { @user = FactoryGirl.create(:user) }

  subject { @user }

  it { should have_many :leaderboards }
  it { should have_many :scores }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@user.name).to match 'Test User \d+'
  end

end
