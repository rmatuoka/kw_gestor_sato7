require 'test_helper'

class ClientesResponsiblesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClientesResponsibles.new.valid?
  end
end
