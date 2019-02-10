require "application_system_test_case"

class Admin::CountriesTest < ApplicationSystemTestCase
  setup do
    @admin_country = admin_countries(:one)
  end

  test "visiting the index" do
    visit admin_countries_url
    assert_selector "h1", text: "Admin/Countries"
  end

  test "creating a Country" do
    visit admin_countries_url
    click_on "New Admin/Country"

    fill_in "Iso", with: @admin_country.iso
    fill_in "Iso3", with: @admin_country.iso3
    fill_in "Libelle", with: @admin_country.libelle
    fill_in "Nicename", with: @admin_country.nicename
    fill_in "Numcode", with: @admin_country.numcode
    fill_in "Phonecode", with: @admin_country.phonecode
    fill_in "Status", with: @admin_country.status
    click_on "Create Country"

    assert_text "Country was successfully created"
    click_on "Back"
  end

  test "updating a Country" do
    visit admin_countries_url
    click_on "Edit", match: :first

    fill_in "Iso", with: @admin_country.iso
    fill_in "Iso3", with: @admin_country.iso3
    fill_in "Libelle", with: @admin_country.libelle
    fill_in "Nicename", with: @admin_country.nicename
    fill_in "Numcode", with: @admin_country.numcode
    fill_in "Phonecode", with: @admin_country.phonecode
    fill_in "Status", with: @admin_country.status
    click_on "Update Country"

    assert_text "Country was successfully updated"
    click_on "Back"
  end

  test "destroying a Country" do
    visit admin_countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Country was successfully destroyed"
  end
end
