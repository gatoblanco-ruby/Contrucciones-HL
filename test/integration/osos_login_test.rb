require 'test_helper'

class OsosLoginTest < ActionDispatch::IntegrationTest
  test "login with invalid information" do
    get login_path
    assert_template 'sessions/gato'
    post login_path, session: { email: "", password: "" }
    assert_template 'sessions/gato'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
