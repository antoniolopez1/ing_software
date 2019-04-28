require "application_system_test_case"

class MaterialsTypesTest < ApplicationSystemTestCase
  setup do
    @materials_type = materials_types(:one)
  end

  test "visiting the index" do
    visit materials_types_url
    assert_selector "h1", text: "Materials Types"
  end

  test "creating a Materials type" do
    visit materials_types_url
    click_on "New Materials Type"

    fill_in "Description", with: @materials_type.description
    click_on "Create Materials type"

    assert_text "Materials type was successfully created"
    click_on "Back"
  end

  test "updating a Materials type" do
    visit materials_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @materials_type.description
    click_on "Update Materials type"

    assert_text "Materials type was successfully updated"
    click_on "Back"
  end

  test "destroying a Materials type" do
    visit materials_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Materials type was successfully destroyed"
  end
end
