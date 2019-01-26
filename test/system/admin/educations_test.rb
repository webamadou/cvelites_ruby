require "application_system_test_case"

class Admin::EducationsTest < ApplicationSystemTestCase
  setup do
    @admin_education = admin_educations(:one)
  end

  test "visiting the index" do
    visit admin_educations_url
    assert_selector "h1", text: "Admin/Educations"
  end

  test "creating a Education" do
    visit admin_educations_url
    click_on "New Admin/Education"

    fill_in "Address", with: @admin_education.address
    fill_in "Degree", with: @admin_education.degree
    fill_in "Description", with: @admin_education.description
    fill_in "Graduation year", with: @admin_education.graduation_year
    fill_in "School", with: @admin_education.school_id
    click_on "Create Education"

    assert_text "Education was successfully created"
    click_on "Back"
  end

  test "updating a Education" do
    visit admin_educations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @admin_education.address
    fill_in "Degree", with: @admin_education.degree
    fill_in "Description", with: @admin_education.description
    fill_in "Graduation year", with: @admin_education.graduation_year
    fill_in "School", with: @admin_education.school_id
    click_on "Update Education"

    assert_text "Education was successfully updated"
    click_on "Back"
  end

  test "destroying a Education" do
    visit admin_educations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education was successfully destroyed"
  end
end
