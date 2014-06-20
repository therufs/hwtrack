class Assignment < ActiveRecord::Base
  belongs_to :class_assignment
  belongs_to :user

  def title
    ClassAssignment.find_by_id(class_assignment_id).title
  end

  def due_date
    ClassAssignment.find_by_id(class_assignment_id).due
  end

end
