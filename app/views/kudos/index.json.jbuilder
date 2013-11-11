json.array!(@kudos) do |kudo|
  json.extract! kudo, :title, :description, :recipient_id, :picture
  json.url kudo_url(kudo, format: :json)
end
