require 'test_helper'

class PreguntaLikertsControllerTest < ActionController::TestCase
  setup do
    @pregunta_likert = pregunta_likerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta_likerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregunta_likert" do
    assert_difference('PreguntaLikert.count') do
      post :create, pregunta_likert: { nombre: @pregunta_likert.nombre, pregunta: @pregunta_likert.pregunta }
    end

    assert_redirected_to pregunta_likert_path(assigns(:pregunta_likert))
  end

  test "should show pregunta_likert" do
    get :show, id: @pregunta_likert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregunta_likert
    assert_response :success
  end

  test "should update pregunta_likert" do
    patch :update, id: @pregunta_likert, pregunta_likert: { nombre: @pregunta_likert.nombre, pregunta: @pregunta_likert.pregunta }
    assert_redirected_to pregunta_likert_path(assigns(:pregunta_likert))
  end

  test "should destroy pregunta_likert" do
    assert_difference('PreguntaLikert.count', -1) do
      delete :destroy, id: @pregunta_likert
    end

    assert_redirected_to pregunta_likerts_path
  end
end
