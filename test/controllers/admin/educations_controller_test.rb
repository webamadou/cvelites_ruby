require 'test_helper'

class Admin::EducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_education = admin_educations(:one)
  end

  test "should get index" do
    get admin_educations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_education_url
    assert_response :success
  end

  test "should create admin_education" do
    assert_difference('Admin::Education.count') do
      post admin_educations_url, params: { admin_education: { address: @admin_education.address, degree: @admin_education.degree, description: @admin_education.description, graduation_year: @admin_education.graduation_year, school_id: @admin_education.school_id } }
    end

    assert_redirected_to admin_education_url(Admin::Education.last)
  end

  test "should show admin_education" do
    get admin_education_url(@admin_education)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_education_url(@admin_education)
    assert_response :success
  end

  test "should update admin_education" do
    patch admin_education_url(@admin_education), params: { admin_education: { address: @admin_education.address, degree: @admin_education.degree, description: @admin_education.description, graduation_year: @admin_education.graduation_year, school_id: @admin_education.school_id } }
    assert_redirected_to admin_education_url(@admin_education)
  end

  test "should destroy admin_education" do
    assert_difference('Admin::Education.count', -1) do
      delete admin_education_url(@admin_education)
    end

    assert_redirected_to admin_educations_url
  end
end
