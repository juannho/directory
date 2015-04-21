require 'test_helper'

class RedDirectoriosControllerTest < ActionController::TestCase
  setup do
    @red_directorio = red_directorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:red_directorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create red_directorio" do
    assert_difference('RedDirectorio.count') do
      post :create, red_directorio: { directorio_id: @red_directorio.directorio_id, link: @red_directorio.link, red: @red_directorio.red }
    end

    assert_redirected_to red_directorio_path(assigns(:red_directorio))
  end

  test "should show red_directorio" do
    get :show, id: @red_directorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @red_directorio
    assert_response :success
  end

  test "should update red_directorio" do
    patch :update, id: @red_directorio, red_directorio: { directorio_id: @red_directorio.directorio_id, link: @red_directorio.link, red: @red_directorio.red }
    assert_redirected_to red_directorio_path(assigns(:red_directorio))
  end

  test "should destroy red_directorio" do
    assert_difference('RedDirectorio.count', -1) do
      delete :destroy, id: @red_directorio
    end

    assert_redirected_to red_directorios_path
  end
end
