require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get search_create_url
    assert_response :success
  end

end
