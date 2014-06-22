class ClassAssignment < ActiveRecord::Base
  # belongs_to :teacher
  has_many :assignments

  validates :title, presence: true
  validates :description, presence: true
  validates :due, presence: true
  validates :assigned, presence: true


  ## should update when an assignment is turned in?

end
