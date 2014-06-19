class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.boolean :complete
      t.text :link

      t.timestamps
    end
  end
end
