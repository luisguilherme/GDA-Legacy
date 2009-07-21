require 'test_helper'

class RespostasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resposta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resposta" do
    assert_difference('Resposta.count') do
      post :create, :resposta => { }
    end

    assert_redirected_to resposta_path(assigns(:resposta))
  end

  test "should show resposta" do
    get :show, :id => resposta(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => resposta(:one).id
    assert_response :success
  end

  test "should update resposta" do
    put :update, :id => resposta(:one).id, :resposta => { }
    assert_redirected_to resposta_path(assigns(:resposta))
  end

  test "should destroy resposta" do
    assert_difference('Resposta.count', -1) do
      delete :destroy, :id => resposta(:one).id
    end

    assert_redirected_to resposta_path
  end
end
