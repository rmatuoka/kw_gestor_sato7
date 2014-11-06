require 'test_helper'

class RolesTestsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => RolesTest.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    RolesTest.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RolesTest.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to roles_test_url(assigns(:roles_test))
  end

  def test_edit
    get :edit, :id => RolesTest.first
    assert_template 'edit'
  end

  def test_update_invalid
    RolesTest.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RolesTest.first
    assert_template 'edit'
  end

  def test_update_valid
    RolesTest.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RolesTest.first
    assert_redirected_to roles_test_url(assigns(:roles_test))
  end

  def test_destroy
    roles_test = RolesTest.first
    delete :destroy, :id => roles_test
    assert_redirected_to roles_tests_url
    assert !RolesTest.exists?(roles_test.id)
  end
end
