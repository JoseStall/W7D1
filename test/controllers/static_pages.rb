require 'test_helper'

class StaticPages < ActionDispatch::IntegrationTest

	

	test "is logged_in?" do
		current_user == nil
	end

	test "not authenticated should get redirect" do
		get :show
		assert_response :redirect
	end
end

