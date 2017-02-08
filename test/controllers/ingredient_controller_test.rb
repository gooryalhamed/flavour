require 'test_helper'

class IngredientControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get ingredient_name:string_url
    assert_response :success
  end

  test "should get amount:string" do
    get ingredient_amount:string_url
    assert_response :success
  end

end
