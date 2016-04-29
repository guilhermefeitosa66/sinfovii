json.array!(@minhainscricaos) do |minhainscricao|
  json.extract! minhainscricao, :id
  json.url minhainscricao_url(minhainscricao, format: :json)
end
