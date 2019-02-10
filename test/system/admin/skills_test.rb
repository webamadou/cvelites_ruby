require "application_system_test_case"

class Admin::SkillsTest < ApplicationSystemTestCase
  setup do
    @admin_skill = admin_skills(:one)
  end

  test "visiting the index" do
    visit admin_skills_url
    assert_selector "h1", text: "Admin/Skills"
  end

  test "creating a Skill" do
    visit admin_skills_url
    click_on "New Admin/Skill"

    fill_in "Description", with: @admin_skill.description
    fill_in "Name", with: @admin_skill.name
    click_on "Create Skill"

    assert_text "Skill was successfully created"
    click_on "Back"
  end

  test "updating a Skill" do
    visit admin_skills_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_skill.description
    fill_in "Name", with: @admin_skill.name
    click_on "Update Skill"

    assert_text "Skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Skill" do
    visit admin_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skill was successfully destroyed"
  end
end
