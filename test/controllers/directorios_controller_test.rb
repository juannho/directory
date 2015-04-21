require 'test_helper'

class DirectoriosControllerTest < ActionController::TestCase
  setup do
    @directorio = directorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directorio" do
    assert_difference('Directorio.count') do
      post :create, directorio: { celular: @directorio.celular, ciudad: @directorio.ciudad, comuna: @directorio.comuna, descripcion: @directorio.descripcion, direccion: @directorio.direccion, nombre: @directorio.nombre, telefono: @directorio.telefono, usuario_rut: @directorio.usuario_rut }
    end

    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should show directorio" do
    get :show, id: @directorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directorio
    assert_response :success
  end

  test "should update directorio" do
    patch :update, id: @directorio, directorio: { celular: @directorio.celular, ciudad: @directorio.ciudad, comuna: @directorio.comuna, descripcion: @directorio.descripcion, direccion: @directorio.direccion, nombre: @directorio.nombre, telefono: @directorio.telefono, usuario_rut: @directorio.usuario_rut }
    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should destroy directorio" do
    assert_difference('Directorio.count', -1) do
      delete :destroy, id: @directorio
    end

    assert_redirected_to directorios_path
  end
end
