require 'test_helper'

class ClientesContractsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClientesContracts.new.valid?
  end
end
