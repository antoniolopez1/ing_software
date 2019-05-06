require 'test_helper'

class EmployeePaymentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_payment_index_url
    assert_response :success
  end

  test "should get new" do
    get employee_payment_new_url
    assert_response :success
  end

  test "should get create" do
    get employee_payment_create_url
    assert_response :success
  end

  test "should get edit" do
    get employee_payment_edit_url
    assert_response :success
  end

  test "should get update" do
    get employee_payment_update_url
    assert_response :success
  end

  test "should get destroy" do
    get employee_payment_destroy_url
    assert_response :success
  end

end
