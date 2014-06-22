class User < ActiveRecord::Base
  validates :name, presence: true

  has_many :assignments

  def completed?(a)
    assignment = Assignment.find_by(user_id: id, class_assignment_id: a.id)
    assignment.complete
  end

end
