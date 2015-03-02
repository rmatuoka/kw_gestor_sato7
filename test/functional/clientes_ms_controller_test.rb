require 'test_helper'

class ClientesMsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ClientesMs.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ClientesMs.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ClientesMs.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to clientes_ms_url(assigns(:clientes_ms))
  end

  def test_edit
    get :edit, :id => ClientesMs.first
    assert_template 'edit'
  end

  def test_update_invalid
    ClientesMs.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ClientesMs.first
    assert_template 'edit'
  end

  def test_update_valid
    ClientesMs.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ClientesMs.first
    assert_redirected_to clientes_ms_url(assigns(:clientes_ms))
  end

  def test_destroy
    clientes_ms = ClientesMs.first
    delete :destroy, :id => clientes_ms
    assert_redirected_to clientes_ms_url
    assert !ClientesMs.exists?(clientes_ms.id)
  end
end
