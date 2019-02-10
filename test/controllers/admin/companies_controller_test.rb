require 'test_helper'

class Admin::CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_company = admin_companies(:one)
  end

  test "should get index" do
    get admin_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_company_url
    assert_response :success
  end

  test "should create admin_company" do
    assert_difference('Admin::Company.count') do
      post admin_companies_url, params: { admin_company: { address: @admin_company.address, description: @admin_company.description, domain_id: @admin_company.domain_id, exist_since: @admin_company.exist_since, legal_status: @admin_company.legal_status, name: @admin_company.name, status: @admin_company.status } }
    end

    assert_redirected_to admin_company_url(Admin::Company.last)
  end

  test "should show admin_company" do
    get admin_company_url(@admin_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_company_url(@admin_company)
    assert_response :success
  end

  test "should update admin_company" do
    patch admin_company_url(@admin_company), params: { admin_company: { address: @admin_company.address, description: @admin_company.description, domain_id: @admin_company.domain_id, exist_since: @admin_company.exist_since, legal_status: @admin_company.legal_status, name: @admin_company.name, status: @admin_company.status } }
    assert_redirected_to admin_company_url(@admin_company)
  end

  test "should destroy admin_company" do
    assert_difference('Admin::Company.count', -1) do
      delete admin_company_url(@admin_company)
    end

    assert_redirected_to admin_companies_url
  end
end
