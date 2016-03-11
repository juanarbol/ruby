require 'test_helper'

class ReferenciaControllerTest < ActionController::TestCase
  setup do
    @referencium = referencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencium" do
    assert_difference('Referencium.count') do
      post :create, referencium: { cantidad: @referencium.cantidad, categoria: @referencium.categoria, color: @referencium.color, costo: @referencium.costo, descripcion: @referencium.descripcion, marca: @referencium.marca, precio: @referencium.precio, ripo: @referencium.ripo, talla: @referencium.talla, tela: @referencium.tela }
    end

    assert_redirected_to referencium_path(assigns(:referencium))
  end

  test "should show referencium" do
    get :show, id: @referencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referencium
    assert_response :success
  end

  test "should update referencium" do
    patch :update, id: @referencium, referencium: { cantidad: @referencium.cantidad, categoria: @referencium.categoria, color: @referencium.color, costo: @referencium.costo, descripcion: @referencium.descripcion, marca: @referencium.marca, precio: @referencium.precio, ripo: @referencium.ripo, talla: @referencium.talla, tela: @referencium.tela }
    assert_redirected_to referencium_path(assigns(:referencium))
  end

  test "should destroy referencium" do
    assert_difference('Referencium.count', -1) do
      delete :destroy, id: @referencium
    end

    assert_redirected_to referencia_path
  end
end
