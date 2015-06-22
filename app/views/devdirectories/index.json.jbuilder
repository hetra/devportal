json.array!(@devdirectories) do |devdirectory|
  json.extract! devdirectory, :id, :name
  json.url devdirectory_url(devdirectory, format: :json)
end
