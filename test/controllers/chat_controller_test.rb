require 'test_helper'

class ChatControllerTest < ActionDispatch::IntegrationTest
  test "should get name_form" do
    get chat_name_form_url
    assert_response :success
  end

  test "should get name_login" do
    get chat_name_login_url
    assert_response :success
  end

  test "should get chat" do
    get chat_chat_url
    assert_response :success
  end

end
