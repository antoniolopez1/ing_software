require 'test_helper'

class FurnitureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get furniture_index_url
    assert_response :success
  end

  test "should get new" do
    get furniture_new_url
    assert_response :success
  end

  test "should get create" do
    get furniture_create_url
    assert_response :success
  end

  test "should get edit" do
    get furniture_edit_url
    assert_response :success
  end

  test "should get update" do
    get furniture_update_url
    assert_response :success
  end

  test "should get destroy" do
    get furniture_destroy_url
    assert_response :success
  end

end
