require 'rails_helper'

RSpec.describe User, :type => :model do

  let(:valid_user) { FactoryBot.create(:user) }

  it "is valid with valid attributes" do
    expect(valid_user).to  be_valid
  end

  it "is not valid with invalid attributes" do
    invalid = User.new(collab: nil)
    expect(invalid).to_not be_valid
  end

  it "is not valid without a email" do
    invalid = User.new(email: nil)
    expect(invalid).to_not be_valid
  end

end
