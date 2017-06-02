require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name" do
    u = User.new
    u.first_name = "Jean"

    assert_equal "Jean", u.full_name

    u.first_name = nil
    u.last_name = "Dupont"

    assert_equal "Dupont", u.full_name

    u.first_name = "Jean"
    u.last_name = "Dupont"

    assert_equal "Jean Dupont", u.full_name
  end
end
