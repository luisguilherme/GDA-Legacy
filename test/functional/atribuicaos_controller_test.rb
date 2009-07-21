require 'test_helper'

class AtribuicaosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atribuicao)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atribuicao" do
    assert_difference('Atribuicao.count') do
      post :create, :atribuicao => { }
    end

    assert_redirected_to atribuicao_path(assigns(:atribuicao))
  end

  test "should show atribuicao" do
    get :show, :id => atribuicao(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => atribuicao(:one).id
    assert_response :success
  end

  test "should update atribuicao" do
    put :update, :id => atribuicao(:one).id, :atribuicao => { }
    assert_redirected_to atribuicao_path(assigns(:atribuicao))
  end

  test "should destroy atribuicao" do
    assert_difference('Atribuicao.count', -1) do
      delete :destroy, :id => atribuicao(:one).id
    end

    assert_redirected_to atribuicao_path
  end
end
