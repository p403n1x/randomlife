require 'test_helper'

class AssignedTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get assigned_tasks_edit_url
    assert_response :success
  end

  test "should get update" do
    get assigned_tasks_update_url
    assert_response :success
  end

end
