require "test_helper"

class WorkerJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get worker_jobs_index_url
    assert_response :success
  end
end
