require 'test_helper'

class Pages::AboutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pages_about = pages_abouts(:one)
  end

  test "should get index" do
    get pages_abouts_url
    assert_response :success
  end

  test "should get new" do
    get new_pages_about_url
    assert_response :success
  end

  test "should create pages_about" do
    assert_difference('Pages::About.count') do
      post pages_abouts_url, params: { pages_about: {  } }
    end

    assert_redirected_to pages_about_url(Pages::About.last)
  end

  test "should show pages_about" do
    get pages_about_url(@pages_about)
    assert_response :success
  end

  test "should get edit" do
    get edit_pages_about_url(@pages_about)
    assert_response :success
  end

  test "should update pages_about" do
    patch pages_about_url(@pages_about), params: { pages_about: {  } }
    assert_redirected_to pages_about_url(@pages_about)
  end

  test "should destroy pages_about" do
    assert_difference('Pages::About.count', -1) do
      delete pages_about_url(@pages_about)
    end

    assert_redirected_to pages_abouts_url
  end
end
