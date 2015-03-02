require 'test_helper'

class ClientResponsiblesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ClientResponsible.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ClientResponsible.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ClientResponsible.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to client_responsible_url(assigns(:client_responsible))
  end

  def test_edit
    get :edit, :id => ClientResponsible.first
    assert_template 'edit'
  end

  def test_update_invalid
    ClientResponsible.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ClientResponsible.first
    assert_template 'edit'
  end

  def test_update_valid
    ClientResponsible.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ClientResponsible.first
    assert_redirected_to client_responsible_url(assigns(:client_responsible))
  end

  def test_destroy
    client_responsible = ClientResponsible.first
    delete :destroy, :id => client_responsible
    assert_redirected_to client_responsibles_url
    assert !ClientResponsible.exists?(client_responsible.id)
  end
end
