require 'test_helper'

class PanelistsControllerTest < ActionController::TestCase
  setup do
    @panelist = panelists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panelists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panelist" do
    assert_difference('Panelist.count') do
      post :create, panelist: { article: @panelist.article, user_id: @panelist.user_id }
    end

    assert_redirected_to panelist_path(assigns(:panelist))
  end

  test "should show panelist" do
    get :show, id: @panelist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panelist
    assert_response :success
  end

  test "should update panelist" do
    patch :update, id: @panelist, panelist: { article: @panelist.article, user_id: @panelist.user_id }
    assert_redirected_to panelist_path(assigns(:panelist))
  end

  test "should destroy panelist" do
    assert_difference('Panelist.count', -1) do
      delete :destroy, id: @panelist
    end

    assert_redirected_to panelists_path
  end
end
