require 'test_helper'

class UtilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utility = utilities(:one)
  end

  test "should get index" do
    get utilities_url
    assert_response :success
  end

  test "should get new" do
    get new_utility_url
    assert_response :success
  end

  test "should create utility" do
    assert_difference('Utility.count') do
      post utilities_url, params: { utility: { description: @utility.description } }
    end

    assert_redirected_to utility_url(Utility.last)
  end

  test "should show utility" do
    get utility_url(@utility)
    assert_response :success
  end

  test "should get edit" do
    get edit_utility_url(@utility)
    assert_response :success
  end

  test "should update utility" do
    patch utility_url(@utility), params: { utility: { description: @utility.description } }
    assert_redirected_to utility_url(@utility)
  end

  test "should destroy utility" do
    assert_difference('Utility.count', -1) do
      delete utility_url(@utility)
    end

    assert_redirected_to utilities_url
  end
end
