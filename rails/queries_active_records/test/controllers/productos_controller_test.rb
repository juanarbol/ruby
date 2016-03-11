require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post :create, producto: { cantidad: @producto.cantidad, categoria: @producto.categoria, color: @producto.color, costo: @producto.costo, descripcion: @producto.descripcion, marca: @producto.marca, precio: @producto.precio, referencia: @producto.referencia, ripo: @producto.ripo, talla: @producto.talla, tela: @producto.tela }
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, id: @producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto
    assert_response :success
  end

  test "should update producto" do
    patch :update, id: @producto, producto: { cantidad: @producto.cantidad, categoria: @producto.categoria, color: @producto.color, costo: @producto.costo, descripcion: @producto.descripcion, marca: @producto.marca, precio: @producto.precio, referencia: @producto.referencia, ripo: @producto.ripo, talla: @producto.talla, tela: @producto.tela }
    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete :destroy, id: @producto
    end

    assert_redirected_to productos_path
  end
end
