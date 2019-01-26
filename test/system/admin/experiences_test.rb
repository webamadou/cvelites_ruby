require "application_system_test_case"

class Admin::ExperiencesTest < ApplicationSystemTestCase
  setup do
    @admin_experience = admin_experiences(:one)
  end

  test "visiting the index" do
    visit admin_experiences_url
    assert_selector "h1", text: "Admin/Experiences"
  end

  test "creating a Experience" do
    visit admin_experiences_url
    click_on "New Admin/Experience"

    fill_in "Company", with: @admin_experience.company_id
    fill_in "Description", with: @admin_experience.description
    fill_in "Ended at", with: @admin_experience.ended_at
    fill_in "Started at", with: @admin_experience.started_at
    fill_in "Status", with: @admin_experience.status
    fill_in "Still there", with: @admin_experience.still_there
    fill_in "Title", with: @admin_experience.title
    fill_in "User", with: @admin_experience.user_id
    click_on "Create Experience"

    assert_text "Experience was successfully created"
    click_on "Back"
  end

  test "updating a Experience" do
    visit admin_experiences_url
    click_on "Edit", match: :first

    fill_in "Company", with: @admin_experience.company_id
    fill_in "Description", with: @admin_experience.description
    fill_in "Ended at", with: @admin_experience.ended_at
    fill_in "Started at", with: @admin_experience.started_at
    fill_in "Status", with: @admin_experience.status
    fill_in "Still there", with: @admin_experience.still_there
    fill_in "Title", with: @admin_experience.title
    fill_in "User", with: @admin_experience.user_id
    click_on "Update Experience"

    assert_text "Experience was successfully updated"
    click_on "Back"
  end

  test "destroying a Experience" do
    visit admin_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Experience was successfully destroyed"
  end
end
