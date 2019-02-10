require "application_system_test_case"

class Admin::HobbiesTest < ApplicationSystemTestCase
  setup do
    @admin_hobby = admin_hobbies(:one)
  end

  test "visiting the index" do
    visit admin_hobbies_url
    assert_selector "h1", text: "Admin/Hobbies"
  end

  test "creating a Hobby" do
    visit admin_hobbies_url
    click_on "New Admin/Hobby"

    fill_in "Icon", with: @admin_hobby.icon
    fill_in "Name", with: @admin_hobby.name
    fill_in "Status", with: @admin_hobby.status
    fill_in "User", with: @admin_hobby.user_id
    click_on "Create Hobby"

    assert_text "Hobby was successfully created"
    click_on "Back"
  end

  test "updating a Hobby" do
    visit admin_hobbies_url
    click_on "Edit", match: :first

    fill_in "Icon", with: @admin_hobby.icon
    fill_in "Name", with: @admin_hobby.name
    fill_in "Status", with: @admin_hobby.status
    fill_in "User", with: @admin_hobby.user_id
    click_on "Update Hobby"

    assert_text "Hobby was successfully updated"
    click_on "Back"
  end

  test "destroying a Hobby" do
    visit admin_hobbies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hobby was successfully destroyed"
  end
end
