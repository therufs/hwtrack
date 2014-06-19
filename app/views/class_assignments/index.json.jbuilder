json.array!(@class_assignments) do |class_assignment|
  json.extract! class_assignment, :id, :title, :description, :assigned, :due
  json.url class_assignment_url(class_assignment, format: :json)
end
