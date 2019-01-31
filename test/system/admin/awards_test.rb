require "application_system_test_case"

class Admin::AwardsTest < ApplicationSystemTestCase
  setup do
    @admin_award = admin_awards(:one)
  end

  test "visiting the index" do
    visit admin_awards_url
    assert_selector "h1", text: "Admin/Awards"
  end

  test "creating a Award" do
    visit admin_awards_url
    click_on "New Admin/Award"

    fill_in "Date", with: @admin_award.date
    fill_in "Description", with: @admin_award.description
    fill_in "Title", with: @admin_award.title
    fill_in "User", with: @admin_award.user_id
    click_on "Create Award"

    assert_text "Award was successfully created"
    click_on "Back"
  end

  test "updating a Award" do
    visit admin_awards_url
    click_on "Edit", match: :first

    fill_in "Date", with: @admin_award.date
    fill_in "Description", with: @admin_award.description
    fill_in "Title", with: @admin_award.title
    fill_in "User", with: @admin_award.user_id
    click_on "Update Award"

    assert_text "Award was successfully updated"
    click_on "Back"
  end

  test "destroying a Award" do
    visit admin_awards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Award was successfully destroyed"
  end
end
