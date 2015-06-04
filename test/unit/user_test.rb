require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_association
    user = User.new
    user.name = 'Bob Dobbs'
    address = user.build_address
    address.street = 'Elm Street'
    user.save!
    assert_equal(address.user.name, 'Bob Dobbs')
    assert address.persisted?
  end
end