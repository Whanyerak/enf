require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "validations" do
    e = Event.new

    e.title = 'Camp'
    refute e.valid?

    e.happen_on = 'wallah'
    refute e.valid?

    e.happen_on = DateTime.now
    assert e.valid?
  end
end
