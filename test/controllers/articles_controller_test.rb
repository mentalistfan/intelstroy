require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get projects" do
    get :projects
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

end
