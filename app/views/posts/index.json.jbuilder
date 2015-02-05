json.array!(@posts) do |post|
  json.extract! post, :id, :title, :slug, :description, :keywords, :punktmenu, :image, :body
  json.url post_url(post, format: :json)
end
