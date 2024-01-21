require "test_helper"

class User::PatientControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_patient_index_url
    assert_response :success
  end

  test "should get new" do
    get user_patient_new_url
    assert_response :success
  end

  test "should get save" do
    get user_patient_save_url
    assert_response :success
  end
end
