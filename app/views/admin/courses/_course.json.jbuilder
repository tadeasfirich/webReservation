json.extract! course, :id, :title, :code, :created_at, :updated_at
json.url course_url(course, format: :json)
