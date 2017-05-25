class MetaController < ApplicationController
  def index
  	@events = Event.where(pinned: true)
  	@topics = Topic.order(updated_at: :desc).limit(5)
  end
end

