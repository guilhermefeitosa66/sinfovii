require 'test_helper'

class MinhainscricaosControllerTest < ActionController::TestCase
  setup do
    @minhainscricao = minhainscricaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minhainscricaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minhainscricao" do
    assert_difference('Minhainscricao.count') do
      post :create, minhainscricao: {  }
    end

    assert_redirected_to minhainscricao_path(assigns(:minhainscricao))
  end

  test "should show minhainscricao" do
    get :show, id: @minhainscricao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minhainscricao
    assert_response :success
  end

  test "should update minhainscricao" do
    patch :update, id: @minhainscricao, minhainscricao: {  }
    assert_redirected_to minhainscricao_path(assigns(:minhainscricao))
  end

  test "should destroy minhainscricao" do
    assert_difference('Minhainscricao.count', -1) do
      delete :destroy, id: @minhainscricao
    end

    assert_redirected_to minhainscricaos_path
  end
end
