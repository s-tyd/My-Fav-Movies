json.extract! movie, :id, :title, :rate, :year, :content, :created_at, :updated_at
json.url movie_url(movie, format: :json)
