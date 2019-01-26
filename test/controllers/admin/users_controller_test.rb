require 'test_helper'

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_user = admin_users(:one)
  end

  test "should get index" do
    get admin_users_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_user_url
    assert_response :success
  end

  test "should create admin_user" do
    assert_difference('Admin::User.count') do
      post admin_users_url, params: { admin_user: { address: @admin_user.address, birth_date: @admin_user.birth_date, birth_place: @admin_user.birth_place, country_id: @admin_user.country_id, email: @admin_user.email, firstname: @admin_user.firstname, name: @admin_user.name, password: 'secret', password_confirmation: 'secret', presentation: @admin_user.presentation, status: @admin_user.status, title: @admin_user.title, views: @admin_user.views } }
    end

    assert_redirected_to admin_user_url(Admin::User.last)
  end

  test "should show admin_user" do
    get admin_user_url(@admin_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_user_url(@admin_user)
    assert_response :success
  end

  test "should update admin_user" do
    patch admin_user_url(@admin_user), params: { admin_user: { address: @admin_user.address, birth_date: @admin_user.birth_date, birth_place: @admin_user.birth_place, country_id: @admin_user.country_id, email: @admin_user.email, firstname: @admin_user.firstname, name: @admin_user.name, password: 'secret', password_confirmation: 'secret', presentation: @admin_user.presentation, status: @admin_user.status, title: @admin_user.title, views: @admin_user.views } }
    assert_redirected_to admin_user_url(@admin_user)
  end

  test "should destroy admin_user" do
    assert_difference('Admin::User.count', -1) do
      delete admin_user_url(@admin_user)
    end

    assert_redirected_to admin_users_url
  end
end
