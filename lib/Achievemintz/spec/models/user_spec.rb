describe User do

  before(:each) { @user = FactoryGirl.create(:user) }

  subject { @user }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@user.name).to match 'Test User'
  end

  it { should have_many :achievements }
  it { should have_many :achievement_unlocks }
  it { should have_many :badges }

end
