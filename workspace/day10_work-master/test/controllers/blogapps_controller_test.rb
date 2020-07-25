require 'test_helper'

class BlogappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blogapp = blogapps(:one)
  end

  test "should get index" do
    get blogapps_url
    assert_response :success
  end

  test "should get new" do
    get new_blogapp_url
    assert_response :success
  end

  test "should create blogapp" do
    assert_difference('Blogapp.count') do
      post blogapps_url, params: { blogapp: {  } }
    end

    assert_redirected_to blogapp_url(Blogapp.last)
  end

  test "should show blogapp" do
    get blogapp_url(@blogapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_blogapp_url(@blogapp)
    assert_response :success
  end

  test "should update blogapp" do
    patch blogapp_url(@blogapp), params: { blogapp: {  } }
    assert_redirected_to blogapp_url(@blogapp)
  end

  test "should destroy blogapp" do
    assert_difference('Blogapp.count', -1) do
      delete blogapp_url(@blogapp)
    end

    assert_redirected_to blogapps_url
  end
end
