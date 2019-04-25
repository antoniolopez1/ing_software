require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_index_url
    assert_response :success
  end

  test "should get new" do
    get employee_new_url
    assert_response :success
  end

  test "should get create" do
    get employee_create_url
    assert_response :success
  end

  test "should get edit" do
    get employee_edit_url
    assert_response :success
  end

  test "should get update" do
    get employee_update_url
    assert_response :success
  end

  test "should get destroy" do
    get employee_destroy_url
    assert_response :success
  end

end
