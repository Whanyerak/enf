class EventsController < ApplicationController
  def index
    events = Event.all.to_a

    @upcoming_events = events.select(&:upcoming?)
    @passed_events   = events - @upcoming_events
  end
end
