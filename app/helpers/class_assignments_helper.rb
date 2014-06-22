module ClassAssignmentsHelper

  def assignees ## why is everyone getting added twice ? :/
    ## hopefully this will be easy to refactor when students & teachers are differentiated.
    assgees = []
    assignments = Assignment.all ## Need to learn how to return multiple records for a query
    assignments.each do |a|
      if a.class_assignment_id == @class_assignment.id 
        # find the assignment's user
        assgees.push(User.find_by_id(a.user_id))
      end
    end
    assgees
  end
end

def complete?(u)
  assignment = Assignment.find_by(user_id: u.id, class_assignment_id: @class_assignment.id)
  if assignment.complete
    "complete"
  else
    "incomplete"
  end
end
