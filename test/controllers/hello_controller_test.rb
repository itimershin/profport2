require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get greeting" do
    get hello_greeting_url
    assert_response :success
  end

  test "should get bye" do
    get hello_bye_url
    assert_response :success
  end

end
