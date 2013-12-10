json.extract! @resource_fork, *ResourceFork.column_names, :created_at, :updated_at
json.resource_types @resource_fork.resource_types do |resource_type|
  json.extract! resource_type, *ResourceType.column_names
  json.url resource_type_url(resource_type, format: :json)
end