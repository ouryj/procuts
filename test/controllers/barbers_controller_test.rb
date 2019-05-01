require 'test_helper'

class BarbersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get barbers_index_url
    assert_response :success
  end

  test "should get new" do
    get barbers_new_url
    assert_response :success
  end

  test "should get show" do
    get barbers_show_url
    assert_response :success
  end

end
