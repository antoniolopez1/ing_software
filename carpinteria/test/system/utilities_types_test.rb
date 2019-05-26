require "application_system_test_case"

class UtilitiesTypesTest < ApplicationSystemTestCase
  setup do
    @utilities_type = utilities_types(:one)
  end

  test "visiting the index" do
    visit utilities_types_url
    assert_selector "h1", text: "Utilities Types"
  end

  test "creating a Utilities type" do
    visit utilities_types_url
    click_on "New Utilities Type"

    fill_in "Description", with: @utilities_type.description
    click_on "Create Utilities type"

    assert_text "Utilities type was successfully created"
    click_on "Back"
  end

  test "updating a Utilities type" do
    visit utilities_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @utilities_type.description
    click_on "Update Utilities type"

    assert_text "Utilities type was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilities type" do
    visit utilities_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilities type was successfully destroyed"
  end
end
