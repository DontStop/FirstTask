require 'test_helper'

class MaketrapControllerTest < ActionController::TestCase
  test "should get add_to_db" do
    get :add_to_db
    assert_response :success
  end

end
