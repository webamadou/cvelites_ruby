require "application_system_test_case"

class Admin::TemplatesTest < ApplicationSystemTestCase
  setup do
    @admin_template = admin_templates(:one)
  end

  test "visiting the index" do
    visit admin_templates_url
    assert_selector "h1", text: "Admin/Templates"
  end

  test "creating a Template" do
    visit admin_templates_url
    click_on "New Admin/Template"

    fill_in "Description", with: @admin_template.description
    fill_in "Domain", with: @admin_template.domain_id
    fill_in "Name", with: @admin_template.name
    fill_in "Status", with: @admin_template.status
    fill_in "Views", with: @admin_template.views
    click_on "Create Template"

    assert_text "Template was successfully created"
    click_on "Back"
  end

  test "updating a Template" do
    visit admin_templates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_template.description
    fill_in "Domain", with: @admin_template.domain_id
    fill_in "Name", with: @admin_template.name
    fill_in "Status", with: @admin_template.status
    fill_in "Views", with: @admin_template.views
    click_on "Update Template"

    assert_text "Template was successfully updated"
    click_on "Back"
  end

  test "destroying a Template" do
    visit admin_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Template was successfully destroyed"
  end
end
