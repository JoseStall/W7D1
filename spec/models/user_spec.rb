require 'rails_helper'

RSpec.describe User, type: :model do
	it "is not valid without a first_name" do
		@user =	User.new(first_name: nil, last_name: "test",email: "test@test.com", password: "mdpmdp")
		expect(@user).to_not be_valid
	end
	it 'is not valid with a blank first_name' do
		@user =	User.new(first_name: "    ", last_name: "test",email: "test@test.com", password: "mdpmdp")
		expect(@user).to_not be_valid
	end
	it "is not valid with an email already used" do
		@user = User.create(first_name: "test1", last_name: "test1" ,email: "test@test.com", password: "mdpmdp1")
		@user1 = User.new(first_name: "test", last_name: "test" ,email: "test@test.com", password: "mdpmdp")
		expect(@user1).to_not be_valid
	end
end
