require "application_system_test_case"

class Admin::CompaniesTest < ApplicationSystemTestCase
  setup do
    @admin_company = admin_companies(:one)
  end

  test "visiting the index" do
    visit admin_companies_url
    assert_selector "h1", text: "Admin/Companies"
  end

  test "creating a Company" do
    visit admin_companies_url
    click_on "New Admin/Company"

    fill_in "Address", with: @admin_company.address
    fill_in "Description", with: @admin_company.description
    fill_in "Domain", with: @admin_company.domain_id
    fill_in "Exist since", with: @admin_company.exist_since
    fill_in "Legal status", with: @admin_company.legal_status
    fill_in "Name", with: @admin_company.name
    fill_in "Status", with: @admin_company.status
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit admin_companies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @admin_company.address
    fill_in "Description", with: @admin_company.description
    fill_in "Domain", with: @admin_company.domain_id
    fill_in "Exist since", with: @admin_company.exist_since
    fill_in "Legal status", with: @admin_company.legal_status
    fill_in "Name", with: @admin_company.name
    fill_in "Status", with: @admin_company.status
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit admin_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
