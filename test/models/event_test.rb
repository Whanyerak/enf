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

  test "upcoming?" do
    e = Event.new

    e.happen_on = 2.days.ago
    refute e.upcoming?

    e.happen_on = 3.days.from_now
    assert e.upcoming?
  end
end
