require 'test_helper'

class FtpSpyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ftp_spy_index_url
    assert_response :success
  end

  test "should get go" do
    get ftp_spy_go_url
    assert_response :success
  end

end
