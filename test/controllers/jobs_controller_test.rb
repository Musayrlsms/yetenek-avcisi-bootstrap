require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get jobs_name:string_url
    assert_response :success
  end
end
