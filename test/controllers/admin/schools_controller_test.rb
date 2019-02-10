require 'test_helper'

class Admin::SchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_school = admin_schools(:one)
  end

  test "should get index" do
    get admin_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_school_url
    assert_response :success
  end

  test "should create admin_school" do
    assert_difference('Admin::School.count') do
      post admin_schools_url, params: { admin_school: { address: @admin_school.address, country_id: @admin_school.country_id, description: @admin_school.description, legal_status: @admin_school.legal_status, name: @admin_school.name } }
    end

    assert_redirected_to admin_school_url(Admin::School.last)
  end

  test "should show admin_school" do
    get admin_school_url(@admin_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_school_url(@admin_school)
    assert_response :success
  end

  test "should update admin_school" do
    patch admin_school_url(@admin_school), params: { admin_school: { address: @admin_school.address, country_id: @admin_school.country_id, description: @admin_school.description, legal_status: @admin_school.legal_status, name: @admin_school.name } }
    assert_redirected_to admin_school_url(@admin_school)
  end

  test "should destroy admin_school" do
    assert_difference('Admin::School.count', -1) do
      delete admin_school_url(@admin_school)
    end

    assert_redirected_to admin_schools_url
  end
end
