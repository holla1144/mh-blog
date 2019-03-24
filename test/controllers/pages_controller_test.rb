require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  base_title = "MH Blog"

  test "should get about" do
    get about_path
    assert_select 'title', text: "About | #{base_title}"
    assert_response :success
  end

  test "should get landing" do
    get root_path
    assert_response :success
    assert_select 'title', text: base_title
  end
  #
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select 'title', text: "Contact | #{base_title}"
  end
end
