json.array!(@companies) do |company|
  json.extract! company, :id, :title, :slug, :menupunkt, :description, :keywords, :image, :body
  json.url company_url(company, format: :json)
end
