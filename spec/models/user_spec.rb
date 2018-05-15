require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = create(:user)
  end

  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "can be created without a name" do
      @user.name = nil
      expect(@user).to be_valid
    end

    it "cannot be created without email" do
      @user.email = nil
      expect(@user).to be_invalid
    end

    it "cannot be created with a password less than 8 characters" do
      @user.password = '1234567'
      expect(@user).to be_invalid
    end
  end
end