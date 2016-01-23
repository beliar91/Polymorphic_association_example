json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :number_of_attendees
  json.url event_url(event, format: :json)
end
