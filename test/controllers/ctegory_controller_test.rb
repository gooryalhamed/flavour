require 'test_helper'

class CtegoryControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get ctegory_name:string_url
    assert_response :success
  end

end
