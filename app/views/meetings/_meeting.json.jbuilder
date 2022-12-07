json.extract! meeting, :id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
