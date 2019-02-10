require "application_system_test_case"

class Admin::LanguagesTest < ApplicationSystemTestCase
  setup do
    @admin_language = admin_languages(:one)
  end

  test "visiting the index" do
    visit admin_languages_url
    assert_selector "h1", text: "Admin/Languages"
  end

  test "creating a Language" do
    visit admin_languages_url
    click_on "New Admin/Language"

    fill_in "Code", with: @admin_language.code
    fill_in "Name", with: @admin_language.name
    fill_in "Status", with: @admin_language.status
    click_on "Create Language"

    assert_text "Language was successfully created"
    click_on "Back"
  end

  test "updating a Language" do
    visit admin_languages_url
    click_on "Edit", match: :first

    fill_in "Code", with: @admin_language.code
    fill_in "Name", with: @admin_language.name
    fill_in "Status", with: @admin_language.status
    click_on "Update Language"

    assert_text "Language was successfully updated"
    click_on "Back"
  end

  test "destroying a Language" do
    visit admin_languages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Language was successfully destroyed"
  end
end
