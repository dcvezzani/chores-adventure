json.array!(@needs) do |need|
  json.extract! need, :title, :description
  json.url need_url(need, format: :json)
end
