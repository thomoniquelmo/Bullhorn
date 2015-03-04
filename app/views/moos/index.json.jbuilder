json.array!(@moos) do |moo|
  json.extract! moo, :id, :content, :text
  json.url moo_url(moo, format: :json)
end
