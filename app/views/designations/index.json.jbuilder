json.array!(@designations) do |designation|
  json.extract! designation, :id, :persona_id, :title_id, :start_date, :end_date
  json.url designation_url(designation, format: :json)
end
