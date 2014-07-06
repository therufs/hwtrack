class ClassAssignment < ActiveRecord::Base
  # belongs_to :teacher
  has_many :assignments, dependent: :destroy
  validate :students_exist

  validates :title, presence: true
  validates :description, presence: true
  validates :due, presence: true
  validates :assigned, presence: true
  validate :due_after_assigned

  def due_after_assigned ## :/
    if assigned > due
      errors.add(:due, "date must be after the assigned date")
    end
  end

  def students_exist
    if User.where(admin:false).none?
      errors.add(:cannot, "create individual assignments without any students.") ## hmph
    end
  end

  ## should update when an assignment is turned in?

end
