class EventsController < ApplicationController
  def index
    events = Event.all.to_a

    @upcoming_events = events.select { |e| e.happen_on > DateTime.now }
    @passed_events   = events - @upcoming_events
  end
end
