require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dash1" do
    get :dash1
    assert_response :success
  end

  test "should get dash2" do
    get :dash2
    assert_response :success
  end

  test "should get dash3" do
    get :dash3
    assert_response :success
  end

end
