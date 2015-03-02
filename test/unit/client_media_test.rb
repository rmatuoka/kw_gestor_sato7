require 'test_helper'

class ClientMediaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClientMedia.new.valid?
  end
end
