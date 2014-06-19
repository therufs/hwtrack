class Assignment < ActiveRecord::Base
  belongs_to :class_assignment
  belongs_to :user
end
