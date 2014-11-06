require 'test_helper'

class UserTestsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UserTest.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UserTest.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UserTest.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to user_test_url(assigns(:user_test))
  end

  def test_edit
    get :edit, :id => UserTest.first
    assert_template 'edit'
  end

  def test_update_invalid
    UserTest.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserTest.first
    assert_template 'edit'
  end

  def test_update_valid
    UserTest.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserTest.first
    assert_redirected_to user_test_url(assigns(:user_test))
  end

  def test_destroy
    user_test = UserTest.first
    delete :destroy, :id => user_test
    assert_redirected_to user_tests_url
    assert !UserTest.exists?(user_test.id)
  end
end
