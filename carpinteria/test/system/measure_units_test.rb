require "application_system_test_case"

class MeasureUnitsTest < ApplicationSystemTestCase
  setup do
    @measure_unit = measure_units(:one)
  end

  test "visiting the index" do
    visit measure_units_url
    assert_selector "h1", text: "Measure Units"
  end

  test "creating a Measure unit" do
    visit measure_units_url
    click_on "New Measure Unit"

    fill_in "Description", with: @measure_unit.description
    click_on "Create Measure unit"

    assert_text "Measure unit was successfully created"
    click_on "Back"
  end

  test "updating a Measure unit" do
    visit measure_units_url
    click_on "Edit", match: :first

    fill_in "Description", with: @measure_unit.description
    click_on "Update Measure unit"

    assert_text "Measure unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Measure unit" do
    visit measure_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measure unit was successfully destroyed"
  end
end
