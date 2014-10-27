json.array!(@httpdata) do |httpdatum|
  json.extract! httpdatum, :id, :remote_ip, :request_method, :query_string, :query_params, :request_id
  json.url httpdatum_url(httpdatum, format: :json)
end
