require 'rails_helper'

RSpec.describe Message, type: :model do

	context "With valid attributes" do 
		it "should be a valid product" do 
		  expect(build(:message, user: build(:user))).to be_valid
		end
	end

	context "With invalid attributes" do 
	    it "should not save if message field is blank" do
	      expect(build(:message, message: "", user: build(:user))).to be_invalid
	    end
	    it "should not save if message is shorter than 10 characters" do
	      expect(build(:message, message: "123456789", user: build(:user))).to be_invalid
	    end
  	end

end