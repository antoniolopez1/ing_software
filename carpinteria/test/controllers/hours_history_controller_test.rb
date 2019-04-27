require 'test_helper'

class HoursHistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hours_history_index_url
    assert_response :success
  end

  test "should get new" do
    get hours_history_new_url
    assert_response :success
  end

  test "should get create" do
    get hours_history_create_url
    assert_response :success
  end

  test "should get edit" do
    get hours_history_edit_url
    assert_response :success
  end

  test "should get update" do
    get hours_history_update_url
    assert_response :success
  end

  test "should get destroy" do
    get hours_history_destroy_url
    assert_response :success
  end

end
