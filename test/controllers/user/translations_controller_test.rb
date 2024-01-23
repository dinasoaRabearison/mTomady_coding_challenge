require "test_helper"

class User::TranslationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_translations_index_url
    assert_response :success
  end

  test "should get show" do
    get user_translations_show_url
    assert_response :success
  end

  test "should get create" do
    get user_translations_create_url
    assert_response :success
  end

  test "should get new" do
    get user_translations_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_translations_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_translations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_translations_destroy_url
    assert_response :success
  end
end
