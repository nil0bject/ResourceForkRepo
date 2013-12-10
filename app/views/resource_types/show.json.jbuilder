json.extract! @resource_type, *ResourceType.column_names, :created_at, :updated_at
json.array!(@resource_type.resources) do |resource|
  json.extract! resource, *Resource.column_names
  json.url resource_url(resource, format: :json)
end