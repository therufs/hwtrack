class ClassAssignment < ActiveRecord::Base
  # belongs_to :teacher
  has_many :assignments

  ## should update when an assignment is turned in?
  
end
