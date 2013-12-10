json.extract! @resource_fork, *ResourceFork.column_names, :created_at, :updated_at
json.array!(@resource_forks.resource_types) do |resource_type|
  json.extract! resource_type, *ResourceType.column_names
  json.url resource_type_url(resource_type, format: :json)
end