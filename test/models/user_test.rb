require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "that User responds to name" do
    user = User.new

    assert user.responds_to?(:name)
  end
end
