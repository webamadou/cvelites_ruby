require 'test_helper'

class Admin::TemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_template = admin_templates(:one)
  end

  test "should get index" do
    get admin_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_template_url
    assert_response :success
  end

  test "should create admin_template" do
    assert_difference('Admin::Template.count') do
      post admin_templates_url, params: { admin_template: { description: @admin_template.description, domain_id: @admin_template.domain_id, name: @admin_template.name, status: @admin_template.status, views: @admin_template.views } }
    end

    assert_redirected_to admin_template_url(Admin::Template.last)
  end

  test "should show admin_template" do
    get admin_template_url(@admin_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_template_url(@admin_template)
    assert_response :success
  end

  test "should update admin_template" do
    patch admin_template_url(@admin_template), params: { admin_template: { description: @admin_template.description, domain_id: @admin_template.domain_id, name: @admin_template.name, status: @admin_template.status, views: @admin_template.views } }
    assert_redirected_to admin_template_url(@admin_template)
  end

  test "should destroy admin_template" do
    assert_difference('Admin::Template.count', -1) do
      delete admin_template_url(@admin_template)
    end

    assert_redirected_to admin_templates_url
  end
end
