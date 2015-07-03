json.array!(@exchanges) do |exchange|
  json.extract! exchange, :id, :name, :ticker, :description, :open_time, :close_time, :headquarters, :country
  json.url exchange_url(exchange, format: :json)
end
