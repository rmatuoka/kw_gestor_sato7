require 'test_helper'

class ClientResponsibleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ClientResponsible.new.valid?
  end
end
