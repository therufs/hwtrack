class AddUserClassAssignmentToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :user_id, :integer
    add_column :assignments, :class_assignment_id, :integer
  end
end
