require 'test_helper'

class ProviderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get provider_index_url
    assert_response :success
  end

  test "should get new" do
    get provider_new_url
    assert_response :success
  end

  test "should get create" do
    get provider_create_url
    assert_response :success
  end

  test "should get edit" do
    get provider_edit_url
    assert_response :success
  end

  test "should get update" do
    get provider_update_url
    assert_response :success
  end

  test "should get destroy" do
    get provider_destroy_url
    assert_response :success
  end

end
