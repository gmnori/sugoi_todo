json.extract! todo, :id, :task, :point, :duedate, :created_at, :updated_at
json.url todo_url(todo, format: :json)
