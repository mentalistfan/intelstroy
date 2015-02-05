json.array!(@mains) do |main|
  json.extract! main, :id, :title, :slug, :menupunkt, :imageattachment, :body, :description, :keywords
  json.url main_url(main, format: :json)
end
