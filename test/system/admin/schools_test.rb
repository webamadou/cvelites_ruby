require "application_system_test_case"

class Admin::SchoolsTest < ApplicationSystemTestCase
  setup do
    @admin_school = admin_schools(:one)
  end

  test "visiting the index" do
    visit admin_schools_url
    assert_selector "h1", text: "Admin/Schools"
  end

  test "creating a School" do
    visit admin_schools_url
    click_on "New Admin/School"

    fill_in "Address", with: @admin_school.address
    fill_in "Country", with: @admin_school.country_id
    fill_in "Description", with: @admin_school.description
    fill_in "Legal status", with: @admin_school.legal_status
    fill_in "Name", with: @admin_school.name
    click_on "Create School"

    assert_text "School was successfully created"
    click_on "Back"
  end

  test "updating a School" do
    visit admin_schools_url
    click_on "Edit", match: :first

    fill_in "Address", with: @admin_school.address
    fill_in "Country", with: @admin_school.country_id
    fill_in "Description", with: @admin_school.description
    fill_in "Legal status", with: @admin_school.legal_status
    fill_in "Name", with: @admin_school.name
    click_on "Update School"

    assert_text "School was successfully updated"
    click_on "Back"
  end

  test "destroying a School" do
    visit admin_schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School was successfully destroyed"
  end
end
