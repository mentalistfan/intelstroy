json.array!(@companycontacts) do |companycontact|
  json.extract! companycontact, :id, :title, :slug, :punktmenu, :description, :keywords, :image, :body
  json.url companycontact_url(companycontact, format: :json)
end
