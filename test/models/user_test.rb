require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "validates presence of first and last name" do
    user = User.new(
      email: "foo@bar.com",
      password: "foo_bar",
      password_confirmation: "foo_bar"
    )

    refute user.valid?

    user.first_name = "John"
    refute user.valid?

    user.last_name = "Doe"
    assert user.valid?
  end

  test "full_name" do
    u = User.new

    u.first_name = "Jean"
    u.last_name = "Dupont"

    assert_equal "Jean Dupont", u.full_name
  end
end
