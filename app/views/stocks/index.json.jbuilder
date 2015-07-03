json.array!(@stocks) do |stock|
  json.extract! stock, :id, :name, :ticker, :description
  json.url stock_url(stock, format: :json)
end
