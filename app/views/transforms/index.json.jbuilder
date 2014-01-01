json.array!(@transforms) do |transform|
  json.extract! transform, :data, :content_type, :resource_id
  json.url transform_url(transform, format: :json)
end
