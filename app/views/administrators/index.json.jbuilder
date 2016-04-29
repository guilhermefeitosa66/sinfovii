json.array!(@administrators) do |administrator|
  json.extract! administrator, :id
  json.url administrator_url(administrator, format: :json)
end
