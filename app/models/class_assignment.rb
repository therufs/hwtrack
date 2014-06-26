class ClassAssignment < ActiveRecord::Base
  # belongs_to :teacher
  has_many :assignments

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


  ## should update when an assignment is turned in?

end
