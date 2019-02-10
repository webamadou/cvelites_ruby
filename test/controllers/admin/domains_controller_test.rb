require 'test_helper'

class Admin::DomainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_domain = admin_domains(:one)
  end

  test "should get index" do
    get admin_domains_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_domain_url
    assert_response :success
  end

  test "should create admin_domain" do
    assert_difference('Admin::Domain.count') do
      post admin_domains_url, params: { admin_domain: { description: @admin_domain.description, name: @admin_domain.name, parent_id: @admin_domain.parent_id, status: @admin_domain.status } }
    end

    assert_redirected_to admin_domain_url(Admin::Domain.last)
  end

  test "should show admin_domain" do
    get admin_domain_url(@admin_domain)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_domain_url(@admin_domain)
    assert_response :success
  end

  test "should update admin_domain" do
    patch admin_domain_url(@admin_domain), params: { admin_domain: { description: @admin_domain.description, name: @admin_domain.name, parent_id: @admin_domain.parent_id, status: @admin_domain.status } }
    assert_redirected_to admin_domain_url(@admin_domain)
  end

  test "should destroy admin_domain" do
    assert_difference('Admin::Domain.count', -1) do
      delete admin_domain_url(@admin_domain)
    end

    assert_redirected_to admin_domains_url
  end
end
