json.extract! @resource_type, *ResourceType.column_names, :created_at, :updated_at
json.resources @resource_type.resources do |resource|
  json.extract! resource, :id, :resource_id, :name
  json.size resource.data.length
  json.url resource_url(resource, format: :json)
end