require "test_helper"

class AddCreateToUserPatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get add_create_to_user_patients_create_url
    assert_response :success
  end
end
