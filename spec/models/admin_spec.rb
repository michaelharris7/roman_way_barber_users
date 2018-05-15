require 'rails_helper'

RSpec.describe Admin, type: :model do
  before do
    @admin = create(:admin)
  end

  describe "creation" do
    it "can be created" do
      expect(@admin).to be_valid
    end

    it "can be created without a name" do
      @admin.name = nil
      expect(@admin).to be_valid
    end

    it "cannot be created without email" do
      @admin.email = nil
      expect(@admin).to be_invalid
    end

    it "cannot be created with a password less than 8 characters" do
      @admin.password = '1234567'
      expect(@admin).to be_invalid
    end
  end
end