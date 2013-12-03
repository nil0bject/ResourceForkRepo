json.array!(@resources) do |resource|
  json.extract! resource, *Resource.column_names
  json.url resource_url(resource, format: :json)
end