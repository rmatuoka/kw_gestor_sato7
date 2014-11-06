require 'test_helper'

class UserTestTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserTest.new.valid?
  end
end
