require 'test_helper'

class PreguntaDicotomicasControllerTest < ActionController::TestCase
  setup do
    @pregunta_dicotomica = pregunta_dicotomicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta_dicotomicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregunta_dicotomica" do
    assert_difference('PreguntaDicotomica.count') do
      post :create, pregunta_dicotomica: { explicacion: @pregunta_dicotomica.explicacion, nombre: @pregunta_dicotomica.nombre, pregunta: @pregunta_dicotomica.pregunta, verdadero: @pregunta_dicotomica.verdadero }
    end

    assert_redirected_to pregunta_dicotomica_path(assigns(:pregunta_dicotomica))
  end

  test "should show pregunta_dicotomica" do
    get :show, id: @pregunta_dicotomica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregunta_dicotomica
    assert_response :success
  end

  test "should update pregunta_dicotomica" do
    patch :update, id: @pregunta_dicotomica, pregunta_dicotomica: { explicacion: @pregunta_dicotomica.explicacion, nombre: @pregunta_dicotomica.nombre, pregunta: @pregunta_dicotomica.pregunta, verdadero: @pregunta_dicotomica.verdadero }
    assert_redirected_to pregunta_dicotomica_path(assigns(:pregunta_dicotomica))
  end

  test "should destroy pregunta_dicotomica" do
    assert_difference('PreguntaDicotomica.count', -1) do
      delete :destroy, id: @pregunta_dicotomica
    end

    assert_redirected_to pregunta_dicotomicas_path
  end
end
