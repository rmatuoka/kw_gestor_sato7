require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Test.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Test.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Test.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to test_url(assigns(:test))
  end

  def test_edit
    get :edit, :id => Test.first
    assert_template 'edit'
  end

  def test_update_invalid
    Test.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Test.first
    assert_template 'edit'
  end

  def test_update_valid
    Test.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Test.first
    assert_redirected_to test_url(assigns(:test))
  end

  def test_destroy
    test = Test.first
    delete :destroy, :id => test
    assert_redirected_to tests_url
    assert !Test.exists?(test.id)
  end
end
