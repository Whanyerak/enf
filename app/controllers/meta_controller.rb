class MetaController < ApplicationController
  def index
  	@topics = Topic.order(updated_at: :desc).limit(5)
  end
end

