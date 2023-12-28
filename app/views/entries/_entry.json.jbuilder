json.extract! entry, :id, :time, :comment, :task_id, :created_at, :updated_at
json.url entry_url(entry, format: :json)
