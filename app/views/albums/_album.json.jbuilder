json.extract! album, :id, :artist, :title, :created_at, :updated_at
json.url album_url(album, format: :json)
