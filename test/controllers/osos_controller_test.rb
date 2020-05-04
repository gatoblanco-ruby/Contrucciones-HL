require 'test_helper'

class OsosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get osos_new_url
    assert_response :success
  end

end
