module ClassAssignmentsHelper

  def assignees
    ## hopefully this will be easy to refactor when students & teachers are differentiated.
    assignees = []
    assignments = Assignment.all ## Need to learn how to return multiple records for a query
    assignments.each do |a|
      if a.class_assignment_id = @class_assignment.id
        # find the assignment's user
        assignees.push(User.find_by_id(a.user_id))
      end
    end
    assignees
  end
end
