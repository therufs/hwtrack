json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :complete, :link
  json.url assignment_url(assignment, format: :json)
end
