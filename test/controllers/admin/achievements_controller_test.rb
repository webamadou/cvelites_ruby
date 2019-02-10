require 'test_helper'

class Admin::AchievementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_achievement = admin_achievements(:one)
  end

  test "should get index" do
    get admin_achievements_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_achievement_url
    assert_response :success
  end

  test "should create admin_achievement" do
    assert_difference('Admin::Achievement.count') do
      post admin_achievements_url, params: { admin_achievement: { description: @admin_achievement.description, status: @admin_achievement.status, title: @admin_achievement.title, user_id: @admin_achievement.user_id } }
    end

    assert_redirected_to admin_achievement_url(Admin::Achievement.last)
  end

  test "should show admin_achievement" do
    get admin_achievement_url(@admin_achievement)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_achievement_url(@admin_achievement)
    assert_response :success
  end

  test "should update admin_achievement" do
    patch admin_achievement_url(@admin_achievement), params: { admin_achievement: { description: @admin_achievement.description, status: @admin_achievement.status, title: @admin_achievement.title, user_id: @admin_achievement.user_id } }
    assert_redirected_to admin_achievement_url(@admin_achievement)
  end

  test "should destroy admin_achievement" do
    assert_difference('Admin::Achievement.count', -1) do
      delete admin_achievement_url(@admin_achievement)
    end

    assert_redirected_to admin_achievements_url
  end
end
