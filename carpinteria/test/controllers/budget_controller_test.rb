require 'test_helper'

class BudgetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get budget_index_url
    assert_response :success
  end

  test "should get new" do
    get budget_new_url
    assert_response :success
  end

  test "should get create" do
    get budget_create_url
    assert_response :success
  end

  test "should get edit" do
    get budget_edit_url
    assert_response :success
  end

  test "should get update" do
    get budget_update_url
    assert_response :success
  end

  test "should get destroy" do
    get budget_destroy_url
    assert_response :success
  end

end
