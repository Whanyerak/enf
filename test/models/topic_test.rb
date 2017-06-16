require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test "validations" do
    topic = Topic.new
    refute topic.valid?

    topic.title = "Hello world !"
    refute topic.valid?

    topic.description = "How are you doing ?"
    assert topic.valid?
  end
end
