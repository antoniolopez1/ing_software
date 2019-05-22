require "application_system_test_case"

class BudgetForOrdersTest < ApplicationSystemTestCase
  setup do
    @budget_for_order = budget_for_orders(:one)
  end

  test "visiting the index" do
    visit budget_for_orders_url
    assert_selector "h1", text: "Budget For Orders"
  end

  test "creating a Budget for order" do
    visit budget_for_orders_url
    click_on "New Budget For Order"

    fill_in "Budget", with: @budget_for_order.budget_id
    fill_in "Observation", with: @budget_for_order.observation
    fill_in "Total", with: @budget_for_order.total
    click_on "Create Budget for order"

    assert_text "Budget for order was successfully created"
    click_on "Back"
  end

  test "updating a Budget for order" do
    visit budget_for_orders_url
    click_on "Edit", match: :first

    fill_in "Budget", with: @budget_for_order.budget_id
    fill_in "Observation", with: @budget_for_order.observation
    fill_in "Total", with: @budget_for_order.total
    click_on "Update Budget for order"

    assert_text "Budget for order was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget for order" do
    visit budget_for_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget for order was successfully destroyed"
  end
end
