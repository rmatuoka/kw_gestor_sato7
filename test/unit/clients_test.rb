require 'test_helper'

class ClientsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Clients.new.valid?
  end
end
