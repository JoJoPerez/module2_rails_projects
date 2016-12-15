require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get names" do
    get index_names_url
    assert_response :success
  end

end
