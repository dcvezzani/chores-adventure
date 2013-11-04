json.array!(@rewards) do |reward|
  json.extract! reward, :title, :description
  json.url reward_url(reward, format: :json)
end
