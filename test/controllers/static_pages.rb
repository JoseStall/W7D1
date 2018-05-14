require 'test_helper'

class StaticPages < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers
	setup do
		sign_in users(:one) 
	end

	test "logged in should get show" do
		get :index
		assert_response :redirect
	end

	test "not authenticated should get redirect" do
		get :show
		assert_response :redirect
	end
end

