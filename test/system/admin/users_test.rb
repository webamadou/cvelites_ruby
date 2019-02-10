require "application_system_test_case"

class Admin::UsersTest < ApplicationSystemTestCase
  setup do
    @admin_user = admin_users(:one)
  end

  test "visiting the index" do
    visit admin_users_url
    assert_selector "h1", text: "Admin/Users"
  end

  test "creating a User" do
    visit admin_users_url
    click_on "New Admin/User"

    fill_in "Address", with: @admin_user.address
    fill_in "Birth date", with: @admin_user.birth_date
    fill_in "Birth place", with: @admin_user.birth_place
    fill_in "Country", with: @admin_user.country_id
    fill_in "Email", with: @admin_user.email
    fill_in "Firstname", with: @admin_user.firstname
    fill_in "Name", with: @admin_user.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Presentation", with: @admin_user.presentation
    fill_in "Status", with: @admin_user.status
    fill_in "Title", with: @admin_user.title
    fill_in "Views", with: @admin_user.views
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit admin_users_url
    click_on "Edit", match: :first

    fill_in "Address", with: @admin_user.address
    fill_in "Birth date", with: @admin_user.birth_date
    fill_in "Birth place", with: @admin_user.birth_place
    fill_in "Country", with: @admin_user.country_id
    fill_in "Email", with: @admin_user.email
    fill_in "Firstname", with: @admin_user.firstname
    fill_in "Name", with: @admin_user.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Presentation", with: @admin_user.presentation
    fill_in "Status", with: @admin_user.status
    fill_in "Title", with: @admin_user.title
    fill_in "Views", with: @admin_user.views
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit admin_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
