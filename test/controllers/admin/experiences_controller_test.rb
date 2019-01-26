require 'test_helper'

class Admin::ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_experience = admin_experiences(:one)
  end

  test "should get index" do
    get admin_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_experience_url
    assert_response :success
  end

  test "should create admin_experience" do
    assert_difference('Admin::Experience.count') do
      post admin_experiences_url, params: { admin_experience: { company_id: @admin_experience.company_id, description: @admin_experience.description, ended_at: @admin_experience.ended_at, started_at: @admin_experience.started_at, status: @admin_experience.status, still_there: @admin_experience.still_there, title: @admin_experience.title, user_id: @admin_experience.user_id } }
    end

    assert_redirected_to admin_experience_url(Admin::Experience.last)
  end

  test "should show admin_experience" do
    get admin_experience_url(@admin_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_experience_url(@admin_experience)
    assert_response :success
  end

  test "should update admin_experience" do
    patch admin_experience_url(@admin_experience), params: { admin_experience: { company_id: @admin_experience.company_id, description: @admin_experience.description, ended_at: @admin_experience.ended_at, started_at: @admin_experience.started_at, status: @admin_experience.status, still_there: @admin_experience.still_there, title: @admin_experience.title, user_id: @admin_experience.user_id } }
    assert_redirected_to admin_experience_url(@admin_experience)
  end

  test "should destroy admin_experience" do
    assert_difference('Admin::Experience.count', -1) do
      delete admin_experience_url(@admin_experience)
    end

    assert_redirected_to admin_experiences_url
  end
end
