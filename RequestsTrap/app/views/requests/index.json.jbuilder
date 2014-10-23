json.array!(@requests) do |request|
  json.extract! request, :id, :name
  json.url request_url(request, format: :json)
end
