require 'test_helper'

class BudgetForOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_for_order = budget_for_orders(:one)
  end

  test "should get index" do
    get budget_for_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_for_order_url
    assert_response :success
  end

  test "should create budget_for_order" do
    assert_difference('BudgetForOrder.count') do
      post budget_for_orders_url, params: { budget_for_order: { budget_id: @budget_for_order.budget_id, observation: @budget_for_order.observation, total: @budget_for_order.total } }
    end

    assert_redirected_to budget_for_order_url(BudgetForOrder.last)
  end

  test "should show budget_for_order" do
    get budget_for_order_url(@budget_for_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_for_order_url(@budget_for_order)
    assert_response :success
  end

  test "should update budget_for_order" do
    patch budget_for_order_url(@budget_for_order), params: { budget_for_order: { budget_id: @budget_for_order.budget_id, observation: @budget_for_order.observation, total: @budget_for_order.total } }
    assert_redirected_to budget_for_order_url(@budget_for_order)
  end

  test "should destroy budget_for_order" do
    assert_difference('BudgetForOrder.count', -1) do
      delete budget_for_order_url(@budget_for_order)
    end

    assert_redirected_to budget_for_orders_url
  end
end
