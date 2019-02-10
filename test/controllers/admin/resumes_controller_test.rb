require 'test_helper'

class Admin::ResumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_resume = admin_resumes(:one)
  end

  test "should get index" do
    get admin_resumes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_resume_url
    assert_response :success
  end

  test "should create admin_resume" do
    assert_difference('Admin::Resume.count') do
      post admin_resumes_url, params: { admin_resume: { description: @admin_resume.description, name: @admin_resume.name, status: @admin_resume.status, user_id: @admin_resume.user_id } }
    end

    assert_redirected_to admin_resume_url(Admin::Resume.last)
  end

  test "should show admin_resume" do
    get admin_resume_url(@admin_resume)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_resume_url(@admin_resume)
    assert_response :success
  end

  test "should update admin_resume" do
    patch admin_resume_url(@admin_resume), params: { admin_resume: { description: @admin_resume.description, name: @admin_resume.name, status: @admin_resume.status, user_id: @admin_resume.user_id } }
    assert_redirected_to admin_resume_url(@admin_resume)
  end

  test "should destroy admin_resume" do
    assert_difference('Admin::Resume.count', -1) do
      delete admin_resume_url(@admin_resume)
    end

    assert_redirected_to admin_resumes_url
  end
end
