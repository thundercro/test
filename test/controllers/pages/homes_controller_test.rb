require 'test_helper'

class Pages::HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pages_home = pages_homes(:one)
  end

  test "should get index" do
    get pages_homes_url
    assert_response :success
  end

  test "should get new" do
    get new_pages_home_url
    assert_response :success
  end

  test "should create pages_home" do
    assert_difference('Pages::Home.count') do
      post pages_homes_url, params: { pages_home: {  } }
    end

    assert_redirected_to pages_home_url(Pages::Home.last)
  end

  test "should show pages_home" do
    get pages_home_url(@pages_home)
    assert_response :success
  end

  test "should get edit" do
    get edit_pages_home_url(@pages_home)
    assert_response :success
  end

  test "should update pages_home" do
    patch pages_home_url(@pages_home), params: { pages_home: {  } }
    assert_redirected_to pages_home_url(@pages_home)
  end

  test "should destroy pages_home" do
    assert_difference('Pages::Home.count', -1) do
      delete pages_home_url(@pages_home)
    end

    assert_redirected_to pages_homes_url
  end
end
