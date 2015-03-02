require 'test_helper'

class ClientesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Clientes.new.valid?
  end
end
