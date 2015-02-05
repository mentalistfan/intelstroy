json.array!(@categories) do |category|
  json.extract! category, :id, :title, :slug, :description, :keywords, :punktmenu, :image, :body
  json.url category_url(category, format: :json)
end
