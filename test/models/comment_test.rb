require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "validations" do
    comment = Comment.new
    refute comment.valid?

    comment.body = ""
    refute comment.valid?

    comment.body = "Hello"
    assert comment.valid?
  end
end
