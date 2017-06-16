require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "create a new event" do
    visit '/'
    login

    visit '/events'

    assert_selector 'h3', text: events(:one).title
    assert_selector 'h3', text: events(:two).title
  end
end
