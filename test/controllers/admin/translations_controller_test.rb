require "test_helper"

class Admin::TranslationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_translations_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_translations_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_translations_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_translations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_translations_destroy_url
    assert_response :success
  end
end
