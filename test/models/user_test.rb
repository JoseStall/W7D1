require 'test_helper'

class UserTest < ActionDispatch::IntegrationTest

	def setup
		@user =	User.new(first_name: "test", last_name: "test",email: "test@test.com", password: "mdpmdp")
	end

	test "should be valid" do
		assert @user.valid?
	end

	test "is not valid without a first_name" do
		@user.first_name = nil
		assert_not @user.valid?
	end

	test "is not valid with a blank first_name" do
		@user.first_name = "   "
		assert_not @user.valid?
	end
	test "is not valid with an email already used" do
		duplicate_user = @user.dup
		@user.save
		assert_not duplicate_user.valid?
	end
end
