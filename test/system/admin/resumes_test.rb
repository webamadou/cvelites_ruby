require "application_system_test_case"

class Admin::ResumesTest < ApplicationSystemTestCase
  setup do
    @admin_resume = admin_resumes(:one)
  end

  test "visiting the index" do
    visit admin_resumes_url
    assert_selector "h1", text: "Admin/Resumes"
  end

  test "creating a Resume" do
    visit admin_resumes_url
    click_on "New Admin/Resume"

    fill_in "Description", with: @admin_resume.description
    fill_in "Name", with: @admin_resume.name
    fill_in "Status", with: @admin_resume.status
    fill_in "User", with: @admin_resume.user_id
    click_on "Create Resume"

    assert_text "Resume was successfully created"
    click_on "Back"
  end

  test "updating a Resume" do
    visit admin_resumes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_resume.description
    fill_in "Name", with: @admin_resume.name
    fill_in "Status", with: @admin_resume.status
    fill_in "User", with: @admin_resume.user_id
    click_on "Update Resume"

    assert_text "Resume was successfully updated"
    click_on "Back"
  end

  test "destroying a Resume" do
    visit admin_resumes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resume was successfully destroyed"
  end
end
