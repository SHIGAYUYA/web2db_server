require 'test_helper'

class Url2htmlControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get url2html_get_url
    assert_response :success
  end

end
