require "application_system_test_case"

class Admin::AchievementsTest < ApplicationSystemTestCase
  setup do
    @admin_achievement = admin_achievements(:one)
  end

  test "visiting the index" do
    visit admin_achievements_url
    assert_selector "h1", text: "Admin/Achievements"
  end

  test "creating a Achievement" do
    visit admin_achievements_url
    click_on "New Admin/Achievement"

    fill_in "Description", with: @admin_achievement.description
    fill_in "Status", with: @admin_achievement.status
    fill_in "Title", with: @admin_achievement.title
    fill_in "User", with: @admin_achievement.user_id
    click_on "Create Achievement"

    assert_text "Achievement was successfully created"
    click_on "Back"
  end

  test "updating a Achievement" do
    visit admin_achievements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_achievement.description
    fill_in "Status", with: @admin_achievement.status
    fill_in "Title", with: @admin_achievement.title
    fill_in "User", with: @admin_achievement.user_id
    click_on "Update Achievement"

    assert_text "Achievement was successfully updated"
    click_on "Back"
  end

  test "destroying a Achievement" do
    visit admin_achievements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Achievement was successfully destroyed"
  end
end
