require 'test_helper'

class Admin::HobbiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_hobby = admin_hobbies(:one)
  end

  test "should get index" do
    get admin_hobbies_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_hobby_url
    assert_response :success
  end

  test "should create admin_hobby" do
    assert_difference('Admin::Hobby.count') do
      post admin_hobbies_url, params: { admin_hobby: { icon: @admin_hobby.icon, name: @admin_hobby.name, status: @admin_hobby.status, user_id: @admin_hobby.user_id } }
    end

    assert_redirected_to admin_hobby_url(Admin::Hobby.last)
  end

  test "should show admin_hobby" do
    get admin_hobby_url(@admin_hobby)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_hobby_url(@admin_hobby)
    assert_response :success
  end

  test "should update admin_hobby" do
    patch admin_hobby_url(@admin_hobby), params: { admin_hobby: { icon: @admin_hobby.icon, name: @admin_hobby.name, status: @admin_hobby.status, user_id: @admin_hobby.user_id } }
    assert_redirected_to admin_hobby_url(@admin_hobby)
  end

  test "should destroy admin_hobby" do
    assert_difference('Admin::Hobby.count', -1) do
      delete admin_hobby_url(@admin_hobby)
    end

    assert_redirected_to admin_hobbies_url
  end
end
