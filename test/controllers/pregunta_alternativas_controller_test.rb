require 'test_helper'

class PreguntaAlternativasControllerTest < ActionController::TestCase
  setup do
    @pregunta_alternativa = pregunta_alternativas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta_alternativas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregunta_alternativa" do
    assert_difference('PreguntaAlternativa.count') do
      post :create, pregunta_alternativa: { explicacion: @pregunta_alternativa.explicacion, nombre: @pregunta_alternativa.nombre, pregunta: @pregunta_alternativa.pregunta, respuesta1: @pregunta_alternativa.respuesta1, respuesta2: @pregunta_alternativa.respuesta2, respuesta3: @pregunta_alternativa.respuesta3, respuesta4: @pregunta_alternativa.respuesta4, verdadera: @pregunta_alternativa.verdadera }
    end

    assert_redirected_to pregunta_alternativa_path(assigns(:pregunta_alternativa))
  end

  test "should show pregunta_alternativa" do
    get :show, id: @pregunta_alternativa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregunta_alternativa
    assert_response :success
  end

  test "should update pregunta_alternativa" do
    patch :update, id: @pregunta_alternativa, pregunta_alternativa: { explicacion: @pregunta_alternativa.explicacion, nombre: @pregunta_alternativa.nombre, pregunta: @pregunta_alternativa.pregunta, respuesta1: @pregunta_alternativa.respuesta1, respuesta2: @pregunta_alternativa.respuesta2, respuesta3: @pregunta_alternativa.respuesta3, respuesta4: @pregunta_alternativa.respuesta4, verdadera: @pregunta_alternativa.verdadera }
    assert_redirected_to pregunta_alternativa_path(assigns(:pregunta_alternativa))
  end

  test "should destroy pregunta_alternativa" do
    assert_difference('PreguntaAlternativa.count', -1) do
      delete :destroy, id: @pregunta_alternativa
    end

    assert_redirected_to pregunta_alternativas_path
  end
end
