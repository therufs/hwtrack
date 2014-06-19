class ClassAssignment < ActiveRecord::Base
  # belongs_to :teacher
  has_many :assignments
end
