require 'test_helper'

class ClientContractTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClientContract.new.valid?
  end
end
