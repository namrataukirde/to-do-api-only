require 'test_helper'

class UsersProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_project = users_projects(:one)
  end

  test "should get index" do
    get users_projects_url, as: :json
    assert_response :success
  end

  test "should create users_project" do
    assert_difference('UsersProject.count') do
      post users_projects_url, params: { users_project: { project_id: @users_project.project_id, user_id: @users_project.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show users_project" do
    get users_project_url(@users_project), as: :json
    assert_response :success
  end

  test "should update users_project" do
    patch users_project_url(@users_project), params: { users_project: { project_id: @users_project.project_id, user_id: @users_project.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy users_project" do
    assert_difference('UsersProject.count', -1) do
      delete users_project_url(@users_project), as: :json
    end

    assert_response 204
  end
end
