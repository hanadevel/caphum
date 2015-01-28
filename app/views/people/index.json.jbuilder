json.array!(@people) do |person|
  json.extract! person, :id, :last_name, :surname, :names, :id_card
  json.url person_url(person, format: :json)
end
