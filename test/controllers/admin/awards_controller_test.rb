require 'test_helper'

class Admin::AwardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_award = admin_awards(:one)
  end

  test "should get index" do
    get admin_awards_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_award_url
    assert_response :success
  end

  test "should create admin_award" do
    assert_difference('Admin::Award.count') do
      post admin_awards_url, params: { admin_award: { date: @admin_award.date, description: @admin_award.description, title: @admin_award.title, user_id: @admin_award.user_id } }
    end

    assert_redirected_to admin_award_url(Admin::Award.last)
  end

  test "should show admin_award" do
    get admin_award_url(@admin_award)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_award_url(@admin_award)
    assert_response :success
  end

  test "should update admin_award" do
    patch admin_award_url(@admin_award), params: { admin_award: { date: @admin_award.date, description: @admin_award.description, title: @admin_award.title, user_id: @admin_award.user_id } }
    assert_redirected_to admin_award_url(@admin_award)
  end

  test "should destroy admin_award" do
    assert_difference('Admin::Award.count', -1) do
      delete admin_award_url(@admin_award)
    end

    assert_redirected_to admin_awards_url
  end
end
