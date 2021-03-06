require 'rails_helper'

RSpec.describe User, type: :model do

  context "With valid attributes" do 
    it "should save" do 
      expect(build(:user)).to be_valid
    end
  end

  context "With invalid attributes" do 
    it "should not save if name field is blank" do
      expect(build(:user, name: "")).to be_invalid
    end
    it "should not save if name is less than 5 characters" do
      expect(build(:user, name: "1234")).to be_invalid
    end
  end
  
end