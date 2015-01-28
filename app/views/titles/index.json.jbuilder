json.array!(@titles) do |title|
  json.extract! title, :id, :item, :name, :belongs_to
  json.url title_url(title, format: :json)
end
