class CreateAssignmentNeeds < ActiveRecord::Migration
  def change
    create_table :assignment_needs do |t|
      t.references :assignment, index: true
      t.references :need, index: true

      t.timestamps
    end
  end
end
