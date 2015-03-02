require 'test_helper'

class ClientContractsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ClientContract.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ClientContract.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ClientContract.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to client_contract_url(assigns(:client_contract))
  end

  def test_edit
    get :edit, :id => ClientContract.first
    assert_template 'edit'
  end

  def test_update_invalid
    ClientContract.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ClientContract.first
    assert_template 'edit'
  end

  def test_update_valid
    ClientContract.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ClientContract.first
    assert_redirected_to client_contract_url(assigns(:client_contract))
  end

  def test_destroy
    client_contract = ClientContract.first
    delete :destroy, :id => client_contract
    assert_redirected_to client_contracts_url
    assert !ClientContract.exists?(client_contract.id)
  end
end
