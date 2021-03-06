require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
    @dustin = admin_users(:dustin)
  end

  test "should get index for admin user" do
    sign_in @dustin
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should not get index for non-admin user" do
    get :index
    assert_response 302
    assert_nil assigns(:messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { content: @message.content, email: @message.email }
    end

    assert_redirected_to root_path
  end

  test "should show message" do
    sign_in @dustin
    get :show, id: @message
    assert_response :success
  end

  test "should not get edit action" do
    assert_raises(ActionController::UrlGenerationError) do
      get :edit
    end
  end

  test "should not post to update action" do
    assert_raises(ActionController::UrlGenerationError) do
      patch :update, id: @message, meesage: { id: 1, content: "New sentence!" }
    end
  end

  test "should destroy message" do
    sign_in @dustin
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
