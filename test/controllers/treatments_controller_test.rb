require "test_helper"

class TreatmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get treatments_show_url
    assert_response :success
  end
end
