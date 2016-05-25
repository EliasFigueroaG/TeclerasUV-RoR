require 'test_helper'

class PreguntaEvidenciaControllerTest < ActionController::TestCase
  setup do
    @pregunta_evidencium = pregunta_evidencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregunta_evidencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregunta_evidencium" do
    assert_difference('PreguntaEvidencium.count') do
      post :create, pregunta_evidencium: { nombre: @pregunta_evidencium.nombre, pregunta: @pregunta_evidencium.pregunta }
    end

    assert_redirected_to pregunta_evidencium_path(assigns(:pregunta_evidencium))
  end

  test "should show pregunta_evidencium" do
    get :show, id: @pregunta_evidencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregunta_evidencium
    assert_response :success
  end

  test "should update pregunta_evidencium" do
    patch :update, id: @pregunta_evidencium, pregunta_evidencium: { nombre: @pregunta_evidencium.nombre, pregunta: @pregunta_evidencium.pregunta }
    assert_redirected_to pregunta_evidencium_path(assigns(:pregunta_evidencium))
  end

  test "should destroy pregunta_evidencium" do
    assert_difference('PreguntaEvidencium.count', -1) do
      delete :destroy, id: @pregunta_evidencium
    end

    assert_redirected_to pregunta_evidencia_path
  end
end
