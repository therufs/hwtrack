class Assignment < ActiveRecord::Base
  belongs_to :class_assignment
  belongs_to :user
  validates :class_assignment_id, presence: true

  # @parent = ClassAssignment.find_by_id(class_assignment_id)

  def title
    class_assignment.title
  end

  def due_date
    class_assignment.due
  end

  def assigned_date
    class_assignment.assigned
  end

  def description
    class_assignment.description
  end

  def late?
    if class_assignment.due < Date.today
      "late"
    else
      "ok"
    end
  end

  ## is it cool to define methods in the model?

end
