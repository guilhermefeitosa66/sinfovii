equire 'test_helper'

class Pacote1sControllerTest < ActionController::TestCase
  setup do
    @pacote1 = pacote1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacote1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacote1" do
    assert_difference('Pacote1.count') do
      post :create, pacote1: {  }
    end

    assert_redirected_to pacote1_path(assigns(:pacote1))
  end

  test "should show pacote1" do
    get :show, id: @pacote1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pacote1
    assert_response :success
  end

  test "should update pacote1" do
    patch :update, id: @pacote1, pacote1: {  }
    assert_redirected_to pacote1_path(assigns(:pacote1))
  end

  test "should destroy pacote1" do
    assert_difference('Pacote1.count', -1) do
      delete :destroy, id: @pacote1
    end

    assert_redirected_to pacote1s_path
  end
end
