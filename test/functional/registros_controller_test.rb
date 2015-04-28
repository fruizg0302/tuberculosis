require 'test_helper'

class RegistrosControllerTest < ActionController::TestCase
  setup do
    @registro = registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro" do
    assert_difference('Registro.count') do
      post :create, registro: { apellido_materno: @registro.apellido_materno, apellido_paterno: @registro.apellido_paterno, email: @registro.email, nationality_id: @registro.nationality_id, nombre: @registro.nombre, posgrado_id: @registro.posgrado_id, profession_id: @registro.profession_id, rfc: @registro.rfc }
    end

    assert_redirected_to registro_path(assigns(:registro))
  end

  test "should show registro" do
    get :show, id: @registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro
    assert_response :success
  end

  test "should update registro" do
    put :update, id: @registro, registro: { apellido_materno: @registro.apellido_materno, apellido_paterno: @registro.apellido_paterno, email: @registro.email, nationality_id: @registro.nationality_id, nombre: @registro.nombre, posgrado_id: @registro.posgrado_id, profession_id: @registro.profession_id, rfc: @registro.rfc }
    assert_redirected_to registro_path(assigns(:registro))
  end

  test "should destroy registro" do
    assert_difference('Registro.count', -1) do
      delete :destroy, id: @registro
    end

    assert_redirected_to registros_path
  end
end
