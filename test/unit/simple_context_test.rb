require 'test_helper'

class SimpleContextTest < ActiveSupport::TestCase
  context 'simple' do
    setup do
      @value = 2
    end
    should 'initialize a class variable' do
      assert @value == 2
    end
  end
end
