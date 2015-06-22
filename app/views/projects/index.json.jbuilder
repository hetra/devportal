json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :version, :license
  json.url project_url(project, format: :json)
end
