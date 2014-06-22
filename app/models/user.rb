class User < ActiveRecord::Base

  has_many :assignments

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  def completed?(a)
    assignment = Assignment.find_by(user_id: id, class_assignment_id: a.id)
    assignment.complete
  end

end
