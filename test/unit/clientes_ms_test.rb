require 'test_helper'

class ClientesMsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClientesMs.new.valid?
  end
end
