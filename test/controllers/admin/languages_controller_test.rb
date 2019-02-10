require 'test_helper'

class Admin::LanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_language = admin_languages(:one)
  end

  test "should get index" do
    get admin_languages_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_language_url
    assert_response :success
  end

  test "should create admin_language" do
    assert_difference('Admin::Language.count') do
      post admin_languages_url, params: { admin_language: { code: @admin_language.code, name: @admin_language.name, status: @admin_language.status } }
    end

    assert_redirected_to admin_language_url(Admin::Language.last)
  end

  test "should show admin_language" do
    get admin_language_url(@admin_language)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_language_url(@admin_language)
    assert_response :success
  end

  test "should update admin_language" do
    patch admin_language_url(@admin_language), params: { admin_language: { code: @admin_language.code, name: @admin_language.name, status: @admin_language.status } }
    assert_redirected_to admin_language_url(@admin_language)
  end

  test "should destroy admin_language" do
    assert_difference('Admin::Language.count', -1) do
      delete admin_language_url(@admin_language)
    end

    assert_redirected_to admin_languages_url
  end
end
