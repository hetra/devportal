json.array!(@devfiles) do |devfile|
  json.extract! devfile, :id, :name, :extension, :contents
  json.url devfile_url(devfile, format: :json)
end
