require 'test_helper'

class ProfilePicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get profile_pictures_create_url
    assert_response :success
  end

end
