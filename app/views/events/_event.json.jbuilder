json.extract! event, :id, :title, :happen_on, :place, :created_at, :updated_at
json.url event_url(event, format: :json)