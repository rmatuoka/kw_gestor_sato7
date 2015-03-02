require 'test_helper'

class ClientesContractsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ClientesContracts.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ClientesContracts.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ClientesContracts.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to clientes_contracts_url(assigns(:clientes_contracts))
  end

  def test_edit
    get :edit, :id => ClientesContracts.first
    assert_template 'edit'
  end

  def test_update_invalid
    ClientesContracts.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ClientesContracts.first
    assert_template 'edit'
  end

  def test_update_valid
    ClientesContracts.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ClientesContracts.first
    assert_redirected_to clientes_contracts_url(assigns(:clientes_contracts))
  end

  def test_destroy
    clientes_contracts = ClientesContracts.first
    delete :destroy, :id => clientes_contracts
    assert_redirected_to clientes_contracts_url
    assert !ClientesContracts.exists?(clientes_contracts.id)
  end
end
