class MetaController < ApplicationController
  def index
    @photos = Photo.where(visible: true)
  	@events = Event.where(pinned: true)
  	@topics = Topic.order(updated_at: :desc).limit(5)
  end
end
