require "application_system_test_case"

class Admin::DomainsTest < ApplicationSystemTestCase
  setup do
    @admin_domain = admin_domains(:one)
  end

  test "visiting the index" do
    visit admin_domains_url
    assert_selector "h1", text: "Admin/Domains"
  end

  test "creating a Domain" do
    visit admin_domains_url
    click_on "New Admin/Domain"

    fill_in "Description", with: @admin_domain.description
    fill_in "Name", with: @admin_domain.name
    fill_in "Parent", with: @admin_domain.parent_id
    fill_in "Status", with: @admin_domain.status
    click_on "Create Domain"

    assert_text "Domain was successfully created"
    click_on "Back"
  end

  test "updating a Domain" do
    visit admin_domains_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_domain.description
    fill_in "Name", with: @admin_domain.name
    fill_in "Parent", with: @admin_domain.parent_id
    fill_in "Status", with: @admin_domain.status
    click_on "Update Domain"

    assert_text "Domain was successfully updated"
    click_on "Back"
  end

  test "destroying a Domain" do
    visit admin_domains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Domain was successfully destroyed"
  end
end
