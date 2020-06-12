require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get recipe" do
    get search_recipe_url
    assert_response :success
  end

end
