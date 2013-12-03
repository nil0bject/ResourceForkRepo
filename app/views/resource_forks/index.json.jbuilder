json.array!(@resource_forks) do |resource_fork|
  json.extract! resource_fork, *ResourceFork.column_names
  json.url resource_fork_url(resource_fork, format: :json)
end