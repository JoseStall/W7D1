require 'test_helper'

class StaticPages < ActionDispatch::IntegrationTest

	setup do
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
		end

	test "is logged_in?" do
		Capybara.current_driver == true
	end

	test "not authenticated should get redirect" do
	root
	assert_response :redirect
	end
end

