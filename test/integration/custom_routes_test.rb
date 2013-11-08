require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login route opens the login page" do
		get '/login'
		assert_response :success
	end

	test "that /login route opens the log out page" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /login route opens the signup page" do
		get '/signup'
		assert_response :success
	end
  # test "the truth" do
  #   assert true
  # end
end
