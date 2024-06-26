require "test_helper"

module Marcasite
  class ThemesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @theme = marcasite_themes(:one)
    end

    test "should get index" do
      get themes_url
      assert_response :success
    end

    test "should get new" do
      get new_theme_url
      assert_response :success
    end

    test "should create theme" do
      assert_difference("Theme.count") do
        post themes_url, params: { theme: { css: @theme.css, description: @theme.description, modifiable: @theme.modifiable, name: @theme.name } }
      end

      assert_redirected_to theme_url(Theme.last)
    end

    test "should show theme" do
      get theme_url(@theme)
      assert_response :success
    end

    test "should get edit" do
      get edit_theme_url(@theme)
      assert_response :success
    end

    test "should update theme" do
      patch theme_url(@theme), params: { theme: { css: @theme.css, description: @theme.description, modifiable: @theme.modifiable, name: @theme.name } }
      assert_redirected_to theme_url(@theme)
    end

    test "should destroy theme" do
      assert_difference("Theme.count", -1) do
        delete theme_url(@theme)
      end

      assert_redirected_to themes_url
    end
  end
end
