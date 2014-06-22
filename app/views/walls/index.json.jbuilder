json.array!(@walls) do |wall|
  json.extract! wall, :id, :bio, :user_id
  json.url wall_url(wall, format: :json)
end
