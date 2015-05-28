require 'test_helper'

class ShouldaContextTest < ActiveSupport::TestCase
  def self.setup_setup_helper
    puts "helper installing setup and teardown hooks"
    setup { puts "running the setup helper"; @wrapped = true }
    teardown{ puts "running the teardown helper"; @wrapped = false }
  end
  context "outer nesting" do
    context 'irrelevant' do
      setup_setup_helper
      should 'not matter' do
        puts "setup assertion"
        assert @wrapped
      end
    end
    context "without setup" do
      setup do
        puts "inner explicit setup"
      end
      should 'not have run the other setup' do
        puts "non-setup assertion"
        assert !@wrapped
      end
    end
  end
end
