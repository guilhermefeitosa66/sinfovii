json.array!(@panelists) do |panelist|
  json.extract! panelist, :id, :article, :user_id
  json.url panelist_url(panelist, format: :json)
end
